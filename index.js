const express = require('express')
const app = express()

app.get('/', function (req, res) {
  res.send('As long as I live, there are infinite chances')
})

app.get('/courses', function (req, res) {
  res.send('Print all courses')
})

app.listen(4000, ()=>{
    console.log("Started server");
}
)
