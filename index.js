const express = require('express')
const cors = require('cors')
const {pool} = require('./config')

const app = express()
app.locals.title = "Book of Thoth API"
app.set('port', process.env.PORT || 3006);
app.use(cors())

app.get('/', (request, response) => {
  response.status(200).send(`Welcome to the ${app.locals.title}`)
});

app.get('/api/v1/cards', (request, response) => {
  let cards;
  pool.query('SELECT * FROM deck', (err, res) => {
    console.log(res);
    if (err) {
      console.log(err)
      return err;
    }
    cards = res.rows;
    response.status(200).send({cards})
  })
});

app.get('/api/v1/results', (request, response) => {
  let results;
  pool.query('SELECT * FROM crypto_results', (err, res) => {
    console.log(res);
    if (err) {
      console.log(err)
      return err;
    }
    results = res.rows;
    response.status(200).send({results})
  })
});

app.listen(app.get('port'), () => {console.log(`${app.locals.title} is running on http://localhost:${app.get('port')}.`)});
