# Node Package Manager or NPM

When you install node on your system, it comes with a package manager that connects you to an incredible library of modules.  That can be used to incorporate into your nodejs applications.  

NPM is filled with commands that makes your day to day experience with nodejs a true joy.

NPM and Node work together to make sure your nodejs application always knows where to go find modules it needs.  The nodejs module system looks for folders called `node_modules`.  In the application directory is the first place node looks, then it continues to work itself back up the tree.  Lastly, it looks in the /usr/local/lib directory or the lib directory where npm and nodejs were installed.  

The most common command that you will use is the `install` command.  The install command does exactly what it says, it installs the requested module for you.

By default, NPM installs packages into the current project directory's `node_modules` folder.  You can also supply the command with a `-g` option and it will install the package in the global directory.  Which is the prefix/lib directory or `/usr/local/lib`.

Here is an example of a local package install:

``` sh
npm install coffee-script
```

This will install the coffee-script package in the current project directory's node_modules directory.

Here is an example of a global package install:

``` sh
npm install coffee-script -g
```

By adding the -g flag, we are instructing nodejs to install the package globally, and NPM will install the package in the prefix/lib and any executables in the prefix/bin.

Of course their are other install options:

You can install from a tar file by providing the tar file name or url.  You can install from a local folder.
You can install a specific version.

For more information about NPM Install I recommend reading the help documentation.

``` sh
npm help install
```

`npm install` has another usage as well, and that is in a project that has a lot of dependencies and you want to install all of the dependencies of that project.  Type: `npm install` no flags or anything else.  It will locate the `package.json` file and use it to install the specified modules for your project.  We will see how that works shortly.

Another feature of NPM is the rebuild command, this command will rebuild any native extensions that any of your project modules may have.  A good example of this is socket.io, which provides real time communications between the browser and the server.  When you move a project from one machine to another, you want to rebuild those bindings on that machine vs using the bindings from another.

``` sh
npm rebuild
```

When starting a node project, it is good practice to create a `package.json` file, this file contains all the meta-data about your project.  

* Name
* Description
* Version
* Dependencies
* Scripts
* etc.

The `npm init` command starts this process of building your `package.json`.  Simply type:

``` sh
npm init
```

In your current directory, and answer all the prompts.

## Exercise 1

Install the `coffee-script` module as a global then do an `npm list` and put the results in to a file called answer.txt

## Exercise 2

Create a new project directory called "Foo", and `cd` into that directory.  Then run an `npm init` and fill in the blanks as best you can, and add that to your project.

Check in both exercises and submit a pull request.