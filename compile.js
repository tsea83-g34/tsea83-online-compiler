const {exec} = require('./promises')
const readFileText = require('./read_file_text')
const assemble = require('./assemble')


module.exports = async(client, onlyCompile=false) => {
    try {
        const filePath = client.req.file.path 
        console.log("cmm file path: " + filePath)
	const child = await exec(`./compiler/compiler ${filePath}`)
        if (onlyCompile){
            const asm = await readFileText("output.a", client)
            client.success({
                asm
            })
            return
        }
        client.req.file.path = "output.a"
        assemble(client)

    } catch(e){
        console.error(e)
        client.error(203, "Messed up compiling", {error: e})
    }
}
