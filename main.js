const express = require('express')
const multer = require('multer')
const assemble = require('./assemble')
const compile = require('./compile')

const Client = require('./Client')

const PORT = 8314
const app = express()
const upload = multer({
    dest: "uploads",
})

app.post("/assemble", upload.single("file"), function(req, res){
    assemble(new Client(req, res))
})

app.post("/compile", upload.single("file"), function(req, res){
    compile(new Client(req, res), true)
})

app.post("/assemble", upload.single("file"), function(req, res){
    compile(new Client(req, res))
})

app.listen(PORT, () => console.log(`Starting server on port: ${PORT}`))