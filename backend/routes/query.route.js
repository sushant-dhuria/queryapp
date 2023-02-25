const express = require('express')
const Query = require('../models/query.model')
const router = express.Router()


router.post('/query',(req,res)=>{
 
                const user = Query({
                    name:req.body.name,
                    query:req.body.query,
                    category:req.body.category
                })
                user.save()
                .then((err)=>{
                    if(err){
                        console.log(err)
                        res.json(err)
                    }else{
                        console.log(user)
                        res.json(user)
                    }
                    
                })
            }
    )


router.get('/queriesml', (req, res) => {
    Query.find({category:"Machine Learning"}, (err, q) => {
        if (err) {
            res.send(err);
        } else {
            res.send(q);
        }
    })
 })
    module.exports = router