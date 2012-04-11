# Lesson 6 - first TDD NodeJS Application

Ready or not, we are going to write our first application, hopefully you are ready to do this.  This application is not going to do much, so don't get too excited.  And you are going to copy most of the code anyway.  But hopefully it will help.

We are going to create the simple nodejs hello world web server application in coffee-script.

First, we need to grab the http module from core:

``` coffeescript
http = require 'http'
```

Next, we need to call the `createServer` function on the `http`
module.  This function takes a callback function as a parameter.  And it returns a server object.

``` coffee-script
server = http.createServer (req, res) ->
  ...
```

### The callback function

The callback function is a little hard to explain, but I will give it my best shot.  Javascript allows you to pass anything as a method parameter, and when you pass a method a function.  Then the function can call that method in its context any time.

This callback capability allows nodejs to implement asynchronous events.  In this case, by passing a callback function to the http server object, the method will get executed every time a new request comes into the web server.

Now that we have our callback function, we need to tell the server to start listening on a port.

``` coffeescript
server.listen 8000
```
### Putting it all together

### Lets write a test

/test/app-test.coffee

``` coffeescript`
request = require 'request'
describe 'app', ->
  describe 'GET /', ->
  before = (done) ->
    request 'http://localhost:3000/', (e, r, b) ->
      result = body
      code = r.statusCode
      contentType = r.headers['content-type']
      done()
  it 'should return code 200', ->
    code.should.equal 200
  it 'should return contentType of `text/html`', ->
    contentType.should.equal 'text/plain'
  it 'should return content `hello world`', ->
    result.should.match(/Hello World/)

```

### Write the app

/app.coffee

``` coffeescript
http = require 'http'
server = http.createServer (req, res) ->
  res.writeHead 200, 'content-type': 'text/plain'
  res.end 'Hello World'
server.listen 8000
```

### Run the app

```
coffee app.coffee
```
### Connect to the app

```
open http://localhost:8000/
```

Go ahead and check in your awesome server, I would like to see it.

