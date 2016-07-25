var express = require('express');
var app = express();

function fibonacci(n) {
  if (n < 2) {
    return n
  } else {
    return fibonacci(n-2) + fibonacci(n-1)
  }
}

app.get('/', function (req, res) {
  x = fibonacci(25)
  res.send(x.toString())
});

app.listen(3100, function () {
  console.log('Example app listening on port 3100!');
});
