'use strict';
const express = require('express');
const crypto = require('crypto');
const wrRoute = express.Router();
const connection = require('../db');

wrRoute.post('/users', function (req, res, next) {
    // let mypass = crypto.createHash("md5").update(req.body.id_card).digest("hex");

    connection.execute(`INSERT INTO employee 
        (name, lastname, id_card, birth_date, sex, status, address, phone_number, email, shopname, sales_category, created_at, 	updated_at)      
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`,
        [req.body.name, req.body.lastname,req.body.id_card ,req.body.birth_date, req.body.sex, req.body.status, req.body.address, req.body.phone_number, req.body.email, req.body.shopname,  req.body.sales_category ,
        Date.now(), Date.now()]).then(() => {
            console.log('ok');
            res.status(201).send("Insert Successfully.");
        }).catch((err) => {
            console.log(err);
            res.end();
        });

});

wrRoute.get('/users', function (req, res, next) {
    connection.execute('SELECT * FROM employee;')
    .then((result) => {
       var rawData = result[0];
    //   res.send(JSON.stringify(rawData));
        res.send(rawData);
    }).catch((err) => {
       console.log(err);
       res.end();
    });

});

wrRoute.post('/check', function (req, res, next) {

    // let mypass = crypto.createHash('md5').update(req.body.id_card).digest("hex");
 
    connection.execute('SELECT * FROM employee WHERE name=? AND  id_card=?;',
 
    [req.body.name,req.body.id_card ]).then((result) => {
 
        var data = result[0];
 
        if (data.length === 0) {
 
           res.sendStatus(200);
 
        } else {
 
           res.sendStatus(400);
 
        }
 
     }).catch((err) => {
        console.log(err);
        res.sendStatus(404);
 
     });
 
 });

 wrRoute.use('/', function (req, res, next) {
    res.sendStatus(404);
});

module.exports = wrRoute;