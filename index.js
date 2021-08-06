const express = require('express')
const cors = require('cors')
const {pool} = require('./config')
const dayjs = require('dayjs')

const app = express()
app.locals.title = "Book of Thoth API"
app.set('port', process.env.PORT || 3006);
app.use(cors())

app.locals.card = null;

function setCard(result) {
  console.log("SETTING", result)
  app.locals.card = result
}

const getRandomCard = async () => {
  const getRandomIndex = array => Math.floor(Math.random() * array.length)
  try {
    const results = await pool.query('SELECT * FROM deck')
    return app.locals.card = results.rows[getRandomIndex(results.rows)];
  }
  catch (err) {
    throw err
  }
}

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

app.get('/api/v1/daily', (request, response) => {
  let card = app.locals.card
  response.status(200).send({card})
});

app.listen(app.get('port'), () => {
  getRandomCard()
  console.log(`${app.locals.title} is running on http://localhost:${app.get('port')}.`)
  setInterval(() => {
    getRandomCard()
  }, (1000 * 60 * 60 * 24))
  });
