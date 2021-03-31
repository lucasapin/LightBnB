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
}
exports.getUserWithEmail = getUserWithEmail;


const getUserWithId = function (id) {

}
exports.getUserWithId = getUserWithId;


const addUser = function (user) {

}
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
