const express = require('express');
const router = express.Router();
const oldMapService = require('../service/oldMapService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await oldMapService.getAll());
  } catch (error) {
    console.error(`Error while fetching map data.`, error.message);
    next(error);
  }
});

router.post('/', async function(req, res, next) {
  try {
    res.json(await oldMapService.save(req.body));
  } catch (err) {
    console.error(`Map data saving error.`, err.message);
    next(err);
  }
});

router.put('/:id', async function(req, res, next) {
  try {
    res.json(await oldMapService.update(req.params.id, req.body));
  } catch (err) {
    console.error(`Error while updating map data.`, err.message);
    next(err);
  }
});

router.delete('/:id', async function(req, res, next) {
  try {
    res.json(await oldMapService.remove(req.params.id));
  } catch (err) {
    console.error(`Error while deleting map data.`, err.message);
    next(err);
  }
});

module.exports = router;