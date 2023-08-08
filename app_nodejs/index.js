// Import the 'express' module
const express = require('express');

// Create an instance of the Express application
const app = express();

// Set the port number
const port = 3000;

// Define a route for the root URL ('/')
app.get('/', (req, res) => res.send('Hello World!'));

// Start the Express server and listen on the specified port
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
