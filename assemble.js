const {readFile} = require('./fs_promise')
const {exec} = require('child_process')
const env = require('./env')

const python_version = env.production ? "python3" : "python" 

module.exports = async (filePath) => {
    try {
        child = exec(`${python_version} test.py`, (err, stdout, stderr) =>{
            console.log(stdout)
        })
        
    } catch(e) {
        console.error(e)
    }
}