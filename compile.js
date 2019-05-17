const {exec} = require('./promises')

module.exports = async(client, onlyCompile=false) => {
    try {
        const filePath = client.req.file.path 
        const child = await exec(`./compiler/compiler ${filePath}`)
        console.log("CHILD:" + child)
        if (onlyCompile){
            const asm = readFileText("output.a")
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