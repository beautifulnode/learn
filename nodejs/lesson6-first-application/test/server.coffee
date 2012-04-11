request = require 'request'
require '../server'

describe 'Hello World Application', ->
  describe 'GET /', ->
    it 'should respond Hello World', (done) ->
      request 'http://localhost:3000/', (err, resp, body) -> 
        body.should.equal 'Hello World\n\n'
        done()
