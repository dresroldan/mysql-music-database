let mysql = require('mysql2');
let inquirer = require('inquirer');

let connection = mysql.createConnection({
  host: 'localhost',

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: 'root',

  // Your password
  password: '',
  database: 'music_db',
});

connection.connect(function (err) {
  if (err) throw err;

  console.log('Welcome to Groove DB!');
  mainMenu();
});

function mainMenu() {
  inquirer
    .prompt({
      name: 'action',
      type: 'list',
      message: 'What would you like to do?',
      choices: [
        'View all artists',
        'View all artists by genre',
        'View all artists by album',
        'Add artist',
        'Update artist',
        'Add genre',
        'Add album',
        'Exit',
      ],
    })

    .then((answer) => {
      switch (answer.action) {
        case 'View all artists':
          viewAllArtists();
          break;

        case 'View all artists by genre':
          viewAllArtistsByGenre();
          break;

        case 'View all artists by album':
          viewAllArtistsByAlbum();
          break;

        case 'Add employee':
          addEmployee();
          break;

        case 'Update employee':
          updateEmp();
          break;

        case 'Add department':
          addDep();
          break;

        case 'Add role':
          addRole();
          break;

        case 'Exit':
          quit();
          break;
      }
    });
}

function viewAllArtists() {
  let viewAllArt =
    "SELECT artist.name AS 'Artist', album.name AS 'Album', genre.name AS 'Genre' FROM artist JOIN genre ON (artist.genre_id = genre.id) JOIN album ON (artist.album_id = album.id)";

  connection.query(viewAllArt, function (err, res) {
    if (err) throw err;
    console.table(res);

    mainMenu();
  });
}

function viewAllArtistsByGenre() {
  let viewAllByGenre =
    " SELECT artist.name AS 'Artist', genre.name AS 'Genre' FROM artist JOIN genre ON (artist.genre_id = genre.id);";

  connection.query(viewAllByGenre, function (err, res) {
    if (err) throw err;
    console.table(res);

    mainMenu();
  });
}

function viewAllArtistsByAlbum() {
  let viewAllByAlbum =
    " SELECT artist.name AS 'Artist', album.name AS 'Album' FROM artist JOIN album ON (artist.album_id = album.id);";

  connection.query(viewAllByAlbum, function (err, res) {
    if (err) throw err;
    console.table(res);

    mainMenu();
  });
}
