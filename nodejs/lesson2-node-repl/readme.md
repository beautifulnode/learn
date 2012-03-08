# Lesson 2 - Node REPL

Great Job!  If you are reading this lesson, you must have nodejs
installed on your system.

In this lesson, we are going to learn how to use the node repl, which is
an abbreviation for (Read Eval Print Loop).  The node repl allows you to
type nodejs commands into your console and have them evaluated in real
time.  This is a great way to experiement or to troubleshoot
functionality.

Lets use the console log to output "Hello World" in node.

Open up your console and type the following:

``` sh
node
```

This command should give you a nodejs prompt.  Now type:

``` sh
console.log('Hello World');
```

You should see 'Hello World' print out.

> Hello World

The `console` object is a global object in nodejs and is accessible
everywhere in any of your node js programs.

---

Next lets type the following:

``` sh
console.dir(console);
```

Your output should look like this:

> { log: [Function],
>  info: [Function],
>  warn: [Function],
>  error: [Function],
>  dir: [Function],
>  time: [Function],
>  timeEnd: [Function],
>  trace: [Function],
>  assert: [Function] }

The console.dir command uses the `util.inspect` to print the string
representation of the object that is passed as a parameter in the dir
method.  In this case we passed the global console object.  This is a
great way to inpect your objects in the repl.  There are some other
useful methods in the repl.

* info
* warn
* error
* time
* timeEnd
* trace
* assert

`info` is the same as `console.log`

`warn` and `error` are the same as `console.log`, but they print out to the
stderr.

`time` marks a time

`timeEnd` finished the timer and outputs the elasped time since the
mark.

For Example:

``` javascript
console.time('foo');
console.timeEnd('foo');
```

Should output

> foo: 8960ms

`trace` will print a stack trace to stderr at the current position.

``` javascript
console.trace();
```
Should provide some similar output:

> Trace: 
>    at repl:1:9
>    at REPLServer.eval (repl.js:80:21)
>    at repl.js:190:20
>    at REPLServer.eval (repl.js:87:5)
>    at Interface.<anonymous> (repl.js:182:12)
>    at Interface.emit (events.js:67:17)
>    at Interface._onLine (readline.js:162:10)
>    at Interface._line (readline.js:426:8)
>    at Interface._ttyWrite (readline.js:603:14)

`assert` is the equivalent of `assert.ok()`

Which takes an value and tests if it is true as well as an optional
message.

``` javascript
console.assert(false, 'foo');
```

How do I exit the REPL?

simply press CTRL-C twice.

## Exercise

In this exercise we want to go to this directory and open up the REPL
and us the fs.writeFileSync method to create an answer.txt file in this
directory.  The writeFileSync method uses the following parameters:

* filename
* data
* encoding = "UTF-8"

To access the writeFileSync method you will need to require the fs
module.  Here is how you require a nodejs module.

``` javascript
var fs = require('fs');
```

Give the exercise a try and check in your answer.txt file.


