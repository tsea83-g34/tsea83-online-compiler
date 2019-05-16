const express = require('express')
const multer = require('multer')
const assemble = require('./assemble')

const Client = require('./Client')

const PORT = 8314
const app = express()
const upload = multer({
    dest: "uploads",
})

app.post("/assemble", upload.single("file"), function(req, res){
    assemble(new Client(req, res))
})

app.listen(PORT, () => console.log(`Starting server on port: ${PORT}`))