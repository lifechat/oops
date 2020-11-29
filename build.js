const path = require('path');
const rollup = require('rollup');
const rm = require('rimraf').sync;
const chokidar = require('chokidar');
const babel = require('rollup-plugin-babel')
const cmd = require('rollup-plugin-commonjs')
const replace = require('rollup-plugin-replace');
const cleanup = require('rollup-plugin-cleanup');
const {terser} = require('rollup-plugin-node-resolve')
const resolve = require('rollup-plugin-node-resolve');

const libName = 'oops';
const version = require('./package.json').version;
const entryPath = path.resolve(__dirname,'./src/index.js');
const outputPath = filename => path.resolve(__dirname,'./dist',filename);


const banner = 
 '/*!\n'+
 `* oops.js v${version}\n`+
 `* (c) 2020-${new Date().getFullYear()} lifechat\n`+
 '* Released under the ISC Licence.\n'+
 '*/'

 const esm = {
     input:entryPath,
     output:{
        banner,
        format:'es',
        file:outputPath(`${libName}.esm.js`),
     },
 }
 const es6m = {
    input: entryPath,
    output: {
      banner,
      format: 'es',
      file: outputPath(`${libName}.es6m.js`),
    },
  }
  
  const cjs = {
    input: entryPath,
    output: {
      banner,
      format: 'cjs',
      file: outputPath(`${libName}.common.js`),
    },
  }
  
  const umd = {
    input: entryPath,
    output: {
      file: outputPath(`${libName}.umd.js`),
      format: 'umd',
      name: libName,
    }
  }
  
  const uglifyCjs = {
    input: entryPath,
    output: {
      banner,
      format: 'cjs',
      file: outputPath(`${libName}.min.js`),
    },
  }

//   create env variable
const createReplacePlugin = ()=>{
    return replace({
        __VERSION__: `'${version}'`,
    })
}
