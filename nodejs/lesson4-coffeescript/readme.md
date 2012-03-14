# Lesson 4 NodeJs and CoffeeScript

- bootstrap or not
- Cakefiles

CoffeeScript is a transpiler language that provides some syntax
sugar for JavaScript.  Odds are, if you are going through this lesson,
you've already had some experience with coffeescript.  If you haven't
here is a great set of links that can get you up to speed.

* [Coffee-Script.org](http://coffee-script.org)
* [CoffeeScript Koans]

## Bootstrap or Compile

There are two ways you can use coffeescript with node.  (bootstrap or compile)

The bootstrap method is by far the easiest way to get started and for
personal use.

In this example, we will use the nodejs filesystem API to read a file.

- example.coffee

``` coffeescript
fs = require 'fs'
textFile  = fs.readFileSync 'foobar.txt'
console.log textFile
```

- bootstrap.coffee

``` coffeescript
require( 'coffee-script');
require('./example');

node bootstrap.js
```

``` sh
coffee -c example.coffee
node example.js
```

---

## Cake

Cake is a make utility that comes with coffeescript.  Like `make` and
`rake`, it is a command line application that looks in the current working directory for a `Cakefile`.  When a Cakefile exists, then in evaluates this file to convert all defined task methods into command line options.


In your project directory, simply create a file called Cakefile and inside that file you can create methods that can be invoked via the 'cake' command.  The dsl to define the tasks is the following:

``` coffeescript
task 'cmd', 'description', -> code
```

For example, to write 'Hello World' to the console in a cake task, it
would look like this.

``` coffeescript
task 'hw', 'print hello world', -> console.log 'hello world'
```

Save the file as `Cakefile`

Then in a console run

``` coffeescript
cake hw
```
#> hello world


## Exercise

Create a Cakefile in this folder and add a task, use the fs.writeFileSync command to create simple text file in this folder called answer.txt.  Then run the cake command to generate that file and check in your code and do a pull request.


