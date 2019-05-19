class Client {
    constructor(req, res){
        this.req = req 
        this.res = res 
    }

    success(data){
        this.res.json({
            status: 200,
            message: "",
            data
        })
    }

    error(errorCode, message, data={}){
        this.res.json({
            status: errorCode,
            message,
            data,
        })
    }
}

module.exports = Client
