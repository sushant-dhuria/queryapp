const mongoose = require('mongoose')
const Schema = mongoose.Schema

const newSchema = new Schema({
    name:String,
    query:String,
    category:String
})

module.exports = mongoose.model('Query',newSchema)