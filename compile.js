const {exec, writeFile} = require('./promises')
const readFileText = require('./read_file_text')
const assemble = require('./assemble')


module.exports = async(client, onlyCompile=false) => {
    try {
	// clean output.a to check for errors later on
	await writeFile("output.a", "")
        const filePath = client.req.file.path 
	const child = await exec(`./compiler/compiler ${filePath}`)
	const output = await readFileText("output.a")
	if (output == "") {
	    throw child.stdout
	}
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
