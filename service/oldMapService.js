const db = require('../db');
const utils = require('../utils');
const tableName = 'old_map';
const fieldId = 'id';
const fieldUrl = 'url';
const fieldMapName = 'name';

async function getAll() {
  const result = await db.query(`SELECT * FROM ${tableName}`)
  return utils.getData(result);
}

async function save(oldMap) {
  const result = await db.query(
    `INSERT INTO ${tableName}(${fieldUrl}, ${fieldMapName}) VALUES ('${oldMap.url}', '${oldMap.name}')`);
  let message = 'Error during saving map data.';
  if (result.affectedRows) {
    message = 'Map data saved successfully.';
  }
  return {message};
}

async function update(id, oldMap) {
  const result = await db.query(
    `UPDATE ${tableName} SET ${fieldUrl}="${oldMap.url}", ${fieldMapName}="${oldMap.name}" WHERE ${fieldId}=${id}` 
  );
  let message = 'Error during updating map data.';
  if (result.affectedRows) {
    message = 'Map data updated successfully';
  }
  return {message};
}

async function remove(id) {
  const result = await db.query(
    `DELETE FROM ${tableName} WHERE ${fieldId}=${id}`
  );
  let message = 'Error during removing map data.';
  if (result.affectedRows) {
    message = 'Map data removed successfully.';
  }
  return {message};
}

module.exports = {
  getAll,
  save,
  update,
  remove
}