const {readFile} = require('./promises')

module.exports = async(filePath, client) => {
    try {
        const fileContents = await readFile(filePath, "utf-8")
        return fileContents
    } catch(e) {
        console.error(e)
        client.error(202, "Failed reading file contents")
    }
}