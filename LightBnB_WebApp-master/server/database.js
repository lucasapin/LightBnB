const properties = require('./json/properties.json');
const users = require('./json/users.json');
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

const getUserWithEmail = function (email) {
  return pool.query(`
  SELECT * FROM users
  WHERE users.email = $1
  `, [email]).then(res => {
    if (res.rows) {
      return res.rows[0]
    } else {
      return null;
    }
  })
};

exports.getUserWithEmail = getUserWithEmail;


const getUserWithId = function (id) {
  return pool.query(`
  SELECT * FROM users
  WHERE users.id = $1
  `, [id]).then(res => {
    if (res.rows) {
      return res.rows;
    } else {
      return null;
    }
  })
}
exports.getUserWithId = getUserWithId;


const addUser = function (user) {
  return pool.query(`
  INSERT INTO users (name, email, password)
  VALUES ($1, $2, $3) RETURNING *
  `, [user.name, user.email, user.email]).then(res => res.rows[0]);
};
exports.addUser = addUser;

const getAllReservations = function (guest_id, limit = 10) {
}
exports.getAllReservations = getAllReservations;


const getAllProperties = function (options, limit = 10) {
  return pool.query(`
  SELECT * FROM properties
  LIMIT $1
  `, [limit])
    .then(res => res.rows);
}
exports.getAllProperties = getAllProperties;


const addProperty = function (property) {
}
exports.addProperty = addProperty;
