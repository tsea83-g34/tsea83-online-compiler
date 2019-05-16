const {readFile, exec} = require('./promises')
const env = require('./env')

const python_version = env.production ? "python3" : "python" 

module.exports = async (filePath) => {
    try {
        child = await exec(`${python_version} assembler/assemble.py ${filePath} --out program.vhd --dm_name data.vhd`)
        console.log(child)
        
    } catch(e) {
        console.error(e)
    }
}