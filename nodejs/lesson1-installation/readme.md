# Lesson 1 - Installation

Depending on what platform you have there is a simple way to install
nodejs.

* MacOS

Step 1

Download the Macintosh Installer ->
[nodejs](http://nodejs.org/#download)

Step 2

Click on the downloaded pkg file and follow the install instructions

Step 3

Make sure that /usr/local/bin is in your $PATH.

Completed.

You should now have node and npm installed on your system.

Exercise 1

In order to confirm you have node and npm installed correctly on your
system we are going to create a file that contains the output of the
node and npm version commands.

Open up a terminal in this directory and type the following:

``` sh
node -v > answer.txt
npm -v >> answer.txt
```

Now cat your file and see if it contains the following:

``` sh
cat answer.txt
```

> v0.6.9
> 1.1.0-3

The version may be a little different, but if you got something, then
that is a great sign!

Check in your file and go to the next lesson!  Great Job!


