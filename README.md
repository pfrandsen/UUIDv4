# UUIDv4

Build library for generating UUID version 4 strings.

## Initialize project

    npm install

## Build

Build the library by running

    ./build.sh

The output is placed in dist folder.

## Publish to npmjs.org

To upload new version to npm registry update version number in src/package.json and run the following
commands:

    ./build.sh
    cd dist
    npm publish ./

or

    ./build.sh
    npm publish ./dist/

## Check npm tools versions

To check the versions on the tools in package.json run

    ./node_modules/.bin/ncu

## References

The configuration of the library is based on simple-ui-lib, see [ng-conf presentation](https://www.youtube.com/watch?v=unICbsPGFIA) as a sample for building a library using the [Angular Package Format](https://goo.gl/AMOU5G).
