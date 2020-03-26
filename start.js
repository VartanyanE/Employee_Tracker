var mysql = require("mysql");
var inquirer = require("inquirer");
const cTable = require('console.table');

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "Lakers323",
    database: "employee_db"
});

connection.connect(function (err) {
    if (err) throw err;
    startApp();

})


function startApp() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View All Employees",
                "View All Employees By Dept",
                "View All Employees By Manager",
                "Add Employee",
                "Remove Employee"
            ]
        })
        .then(function (answer) {
            switch (answer.action) {
                case "View All Employees":
                    viewEmployees(); break;

                case "View All Employees By Dept":
                    employeesDept();
                    break;

                case "View All Employees By Managere":
                    //   rangeSearch();
                    break;

                case "Add Employee":
                    //   songSearch();
                    break;

                case "Remove Employee":
                    //   songAndAlbumSearch();
                    break;
            }
        })
}

const viewEmployees = () => {
    connection.query("SELECT * FROM employee ", function (err, res) {
        if (err) throw err;
        console.table(res);
        // connection.end();
    });

}

const employeesDept = () => {
    connection.query("SELECT * FROM employee", function (err, res) {
        if (err) throw err;
        console.table(res);
        // connection.end();
    });

}
