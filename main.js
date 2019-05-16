const express = require('express')
const multer = require('multer')
const assemble = require('./assemble')

const PORT = 8314
const app = express()
const upload = multer({
    dest: "uploads",
})

app.post("/assemble", upload.single("file"), function(req, res){
    console.log(req.file)
    console.log(req.body)
    assemble(req.file.path)
    res.json({
        status: 200,
        message: `Assembled file '${req.body.name}'`,
        data: {},
    })
})

app.listen(PORT, () => console.log(`Starting server on port: ${PORT}`))