# Clean up previous distributions
rm -rf dist
rm -rf build

# Variables
NGC="node node_modules/.bin/ngc"
ROLLUP="node node_modules/.bin/rollup"

# Run Angular Compiler
$NGC -p src/tsconfig-build.json
# Rollup UUIDv4-lib.js
$ROLLUP build/UUIDv4.js -o dist/UUIDv4.js

# Repeat the process for es5 version
$NGC -p src/tsconfig-es5.json
$ROLLUP build/UUIDv4.js -o dist/UUIDv4.es5.js

# Copy non-js files from build
rsync -a --exclude=*.js build/ dist

# Copy library package.json and README.md
cp src/package.json dist/package.json
cp src/README.md dist/README.md
