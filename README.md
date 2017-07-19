# Ceylon NPM integration examples

This repository contains some very simple examples showing
how a [Ceylon][] module can make use of JavaScript modules
belonging to the [node package manager][npm].

[npm]: https://www.npmjs.com/
[Ceylon]: https://ceylon-lang.org/

### Requirements

- [npm 5.0.3](https://docs.npmjs.com/getting-started/installing-node)
- [Ceylon 1.3.3](https://ceylon-lang.org/download/)

If you don't already have Ceylon installed, you don't need 
to explicitly install it, since the `ceylonb` command is
self-installing.

### Compiling and running

Compile the examples by typing

    ceylon compile-js

which automatically calls `npm` to install the dependencies.

Run the examples using

    ceylon run-js -x runXmlParser eg.npm
    ceylon run-js -x runHtmlRequest eg.npm
    ceylon run-js -x runCommander eg.npm --pineapple --cheese parmesan
