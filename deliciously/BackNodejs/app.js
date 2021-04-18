const express = require('express')
const morgan = require('morgan')
const app = express()
const port = 3030
app.use(morgan('short'))
const mysql = require('mysql')

// CONNEXION A LA BASE DE DONNEES MYSQL
var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "Deliciously"
})
  
connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
})

// GET DE TOUS LES RESTAURANTS
app.get("/restaurant", (req, res) => {
    const queryString = "SELECT * FROM Restaurant"
    connection.query(queryString, (err, rows, fields) => {
        if (err) {
            console.log("Failed to query: " + err)
            res.sendStatus(500)
            return
        }
        res.json(rows)
    })
})

// GET D'UN SEUL RESTAURANT 
app.get("/restaurant/:id", (req, res) => {
    const restaurantId = req.params.id
    const queryString = "SELECT * FROM Restaurant WHERE id = ?"
    connection.query(queryString, [restaurantId],(err, rows, fields) => {
        if (err) {
            console.log("Failed to query: " + err)
            res.sendStatus(500)
            return
        }
        if (rows.length == 0){
            res.sendStatus(404)
            return
        }
        res.json(rows)
    })
})

// GET DES TAGS D'UN SEUL RESTAURANT 
app.get("/restaurant/:id/tags", (req, res) => {
    const restaurantId = req.params.id
    const queryString = "SELECT * FROM Tags WHERE restaurant_id = ?"
    connection.query(queryString, [restaurantId],(err, rows, fields) => {
        if (err) {
            console.log("Failed to query: " + err)
            res.sendStatus(500)
            return
        }
        if (rows.length == 0){
            res.sendStatus(404)
            return
        }
        res.json(rows)
    })
})

// GET DES IMAGES D'UN SEUL RESTAURANT 
app.get("/restaurant/:id/images", (req, res) => {
    const restaurantId = req.params.id
    const queryString = "SELECT * FROM Images WHERE restaurant_id = ?"
    connection.query(queryString, [restaurantId],(err, rows, fields) => {
        if (err) {
            console.log("Failed to query: " + err)
            res.sendStatus(500)
            return
        }
        if (rows.length == 0){
            res.sendStatus(404)
            return
        }
        res.json(rows)
    })
})

// LANCE LE SERVEUR SUR LE PORT DECLARE
app.listen(port, () => {
    console.log("Server running on port: " + port)
})