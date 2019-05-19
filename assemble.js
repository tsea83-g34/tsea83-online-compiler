const {readFile, exec} = require('./promises')
const readFileText = require('./read_file_text')
const env = require('./env')

const python_version = env.production ? "python3" : "python" 

module.exports = async (client) => {
    try {
        const filePath = client.req.file.path
        const child = await exec(`${python_version} assembler/assemble.py ${filePath} --out program.vhd --dm_name data.vhd`)
        const pm = await readFileText("program.vhd", client)
        const dm = await readFileText("data.vhd", client)
        const uart = await readFile("uart.bin")
        uart = uart.toString("base64")
        client.success({
            pm,
            dm,
            uart,
        })
        
    } catch(e) {
        console.error(e)
        client.error(201, "Failed exec step", {error:e})
    }
}