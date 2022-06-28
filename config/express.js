const express = require('express');
const bodyParser = require('body-parser');
const routes = require('../api/routes/routes');

const app = express();

exports.startServer = () => {
  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({ extended: true }));

  app.listen(process.env.PORT || 5000, () => {
    console.log(`Server initialized in port 8080`);
  });

  return app;
};

exports.routes = () => {
  app.use('/api', routes);
};
