const {promisify} = require('util')
const fs = require('fs')

module.exports = {
    readFile: promisify(fs.readFile),
    writeFile: promisify(fs.writeFile),
    unlink: promisify(fs.unlink),
} 