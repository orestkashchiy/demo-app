require('dotenv').config();
const mongoose = require('mongoose');

//console.log('The value is:', process.env.PROD_DATABASE);

//mongoose.connect(process.env.PROD_DATABASE, {
mongoose.connect(process.env.PROD_DATABASE, {
  useNewUrlParser: true,
  useUnifiedTopology: true
});

mongoose.connection
  .on('open', () => {
    console.log('Mongoose connection open');
  })
  .on('error', (err) => {
    console.log(`Connection error: ${err.message}`);
  });

  
require('./models/Registration');
const app = require('./app');

const server = app.listen(3000, () => {
  console.log(`Express is running on port ${server.address().port}`);
});
