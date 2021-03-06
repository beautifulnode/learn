# Lesson 5 - Test Driven Development with Mocha

TDD is the standard in development these days, and nodejs comes with some great testing tools, mocha is the one we will talk about here.  Mocha is very similar to RSpec if you are familiar with the popular TDD tool in Ruby, the Domain Specific Language or DSL should make you feel right at home.  If you do not prefer that DSL, there are others to choose from.  Mocha also integrates very well with continuous integration servers.

## How to use mocha

When you setup your coffeescript nodejs application, you should have a package.json file, in this file you will want to add a devDependency for Mocha and Should.

```
devDependencies: {
  "should": "*"
}
```

Should is a nice extension library that provides you some sugar to test your return values in your test modules.  It is very similiar to shoulda from the ruby world.

Once you have modified your package.json, you can now install those modules using npm.

```
npm install mocha@latest -g
npm install
```

Now you can specify any directory to be your test directory, but the default test directory that mocha looks for is called test.  So lets create a test directory in our project.

```
mkdir test
```

## creating a mocha opts file

We are using an additional test library called should and we want mocha to require this module on every test module.  We could declare it in every file or we can add a mocha.opts file in the test directory.  This mocha.opts file allows you to specify other options as well.

```
echo '--require should' >> test/mocha.opts
echo '--colors' >> test/mocha.opts
echo '--compilers coffee:coffee-script' >> test/mocha.opts
```

hint: With the release of Mocha 1.0.0, you now need to specify
coffee-script as a compiler in your options file or command line.

---

Lets create our first mocha test file.  In TDD, we write the tests before we write the app code.  We will be using the behavior dsl.

[edit] test/hello.coffee

```
hello = require '../hello.coffee' # application file
describe 'hello#foo', ->
  it 'should return bar', ->
    hello.foo().should.equal 'bar'
```

[run] test

```
mocha
```

Too see all the features of mocha go to:

[http://visionmedia.github.com/mocha/](http://visionmedia.github.com/mocha/)

Testing is just plain hard, but there are some good patterns to follow.  Using the before, beforeEach, can make your tests clean and readable.

``` coffeescript

request = require 'request'

describe 'my web app', ->
  describe 'GET /', ->
    result = ""
    code = 0
    contentType = ''
    before = (done) ->
      request 'http://localhost:3000/', (e, r, b) ->
        result = body
        code = r.statusCode
        contentType = r.headers['content-type']
        done()
    it 'should return code 200', ->
      code.should.equal 200
    it 'should return contentType of `text/html`', ->
      contentType.should.equal 'text/html'
    it 'should return content `hello world`', ->
      result.should.match(/hello world/)

```

## Exercise

Create a small node project and your first test.  The node project should output hello world via stdout.  The test should confirm this happens.

### app.coffee

``` coffeescript
console.log 'hello world'
```

### test/app.coffee

``` coffeescript
describe 'hello world', ->
  output = ""
  before (done) ->
    process.stdout.on 'data', (data) ->
      output += data.toString()
      done()
  it 'should output hello world', ->
    require '../app'
    output.should.equal 'hello world'
```
# Additional Info

## Setting up mocha in npm package

[edit] package.json

```
"scripts": {
  "test": "mocha"
}
```

now you can invoke mocha using npm test

```
npm test
```

## Setting up mocha in your cakefile

[edit] Cakefile

```
{ spawn } = require 'child_process'

task 'test', ->
  test = spawn 'mocha', ['-c']
  test.stdout.pipe(process.stdout)
  test.stderr.pipe(process.stderr)
```
* async usage
