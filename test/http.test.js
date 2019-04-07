'use strict'

var request = require('supertest')

describe('Broker HTTP Test', () => {
  var url = 'localhost:' + process.env.HTTP_PORT.toString()

  it('should return 401 if a request cannot be authenticated', function (done) {
    request(url)
      .get('/resources/notauthenticated')
      .expect(401, done)
  })

  it('should GET an unauthorized access and return 401', function (done) {
    request(url)
      .get('/resources/hello')
      .expect(401, done)
  })

  it('should PUT an unauthorized access and return 401', function (done) {
    request(url)
      .put('/resources/hello')
      .send('hello world')
      .expect(401, done)
  })

  it('should PUT an authorized access and return 204', function (done) {
    request(url)
      .put('/resources/mahdi/hello')
      .auth('mahdi', 'adrekni')
      .set('X-Paraffin-Client-Id', 'm313')
      .send('hello mahdi')
      .expect(204, done)
  })

  it('should GET an Authorized access and return 200', function (done) {
    request(url)
      .get('/resources/mahdi/hello')
      .auth('mahdi', 'adrekni')
      .set('X-Paraffin-Client-Id', 'm313')
      .expect(200, 'hello mahdi', done)
  })

  it('should POST and GET a topic and its payload', function (done) {
    request(url)
      .put('/resources/hello')
      .auth('username', 'password')
      .set('content-type', 'text/plain')
      .set('X-Paraffin-Client-Id', 'u911')
      .send('hello world')
      .expect(204, function () {
        request(url)
          .get('/resources/hello')
          .auth('username', 'password')
          .set('X-Paraffin-Client-Id', 'u911')
          .expect(200, 'hello world', done)
      })
  })
})
