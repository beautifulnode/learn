# Lesson 4 NodeJs and CoffeeScript

- bootstrap or not
- Cakefiles
- docco

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

Cake is a make utility that comes with coffeescript.  Like make and
rake, it is a dsl that exists in a Cakefile.  This dsl allows you to
create tasks that can perform routines that make your project mgmt
easier.


Now, we can run

