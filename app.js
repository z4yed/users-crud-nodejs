const express = require("express");
const exphbs = require("express-handlebars");
const bodyParser = require("body-parser");
const mysql = require("mysql");

require("dotenv").config();
const { pool } = require("./server/connections/connections");
const userRoutes = require("./server/routes/user");

const app = express();
const port = process.env.PORT || 5000;

// parsing middleware
app.use(bodyParser.urlencoded({ extended: false }));

// parse application/json
app.use(bodyParser.json());

// Static files
app.use(express.static("public"));

//template engine
app.engine("hbs", exphbs.engine({ extname: ".hbs" }));
app.set("view engine", "hbs");

// connect to db
pool.getConnection((err, connection) => {
  if (err) {
    throw err;
  } else {
    console.log("Connected as ID: ", connection.threadId);
  }
});

// Routes
app.use("/", userRoutes);

app.listen(port, () => {
  console.log(`Listening on port, ${port}`);
});
