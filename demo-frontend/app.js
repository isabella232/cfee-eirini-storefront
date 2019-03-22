require('dotenv').config({
  path: 'local.env'
});

const request = require('request-promise');
const express = require('express');
const app = express();
app.use('/', express.static(__dirname + '/public'));

app.get('/products', (req, res) => {
  request({
    uri: `${process.env.BACKEND_URL}/products`,
    json: true,
  }).then((response) => {
    res.send(JSON.parse(response.result.result));
  }).catch((err) => {
    console.log(err);
    res.send([]);
  });
});

const server = app.listen(process.env.PORT || 8081, () => {
  console.log(`Listening on port http://0.0.0.0:${server.address().port}`);
});
