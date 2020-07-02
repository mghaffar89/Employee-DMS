//REFERENCES FROM ACTIVITY 12.5, 12.10, 12.12, 12.13, & 12.14

var mysql = require("mysql2");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Mina123$",
  database: "employee_DB",
});

connection.connect(function (err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});

function start() {
  inquirer.prompt({
    name: "action",
    type: "list",
    message: "Would you like to do?",
    choices: [
      "View all Employees",
      "View all Employees by Department",
      "View all Employees by Manager",
      "Add Employee",
      "Add Department",
      "Add Role",
      "Remove Employee",
      "Update Employee role",
      "Exit",
    ],
  });

  /*.then(function (answer) {
      // based on their answer, either call the bid or the post functions
      if (answer.postOrBid === "POST") {
        postAuction();
      } else if (answer.postOrBid === "BID") {
        bidAuction();
      } else {
        connection.end();
      }
    });*/
}
