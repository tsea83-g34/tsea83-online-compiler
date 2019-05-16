const {promisify} = require('util')
const {exec} = require('child_process')
const fs = require('fs')

module.exports = {
    readFile: promisify(fs.readFile),
    writeFile: promisify(fs.writeFile),
    unlink: promisify(fs.unlink),
    exec: promisify(exec),
} 