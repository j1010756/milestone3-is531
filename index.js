// test2
let express = require("express");
let app = new express();
app.set("view engine", "ejs");

// Set up database connection using environment variables
const knex = require("knex")({
  client: "mysql",
  connection: {
    host: "milestone3-dbinstance-4lzf005ubyuz.cvm8gw8a626k.us-east-2.rds.amazonaws.com",
    user: "admin",
    password: "Milestone2!**",
    database: "donut_db",
    port: 3306,
  },
});

app.get("/", (req, res) => {
  knex
    .select()
    .from("donuts")
    .then((result) => {
      console.log(result);
      res.render("index", { aDonutList: result });
    });
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});

