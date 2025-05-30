const express = require('express');
const router = express.Router();
const db = require('../db/config');

router.get('/api/products', (req, res) => {
  const { category, selling_type } = req.query;
  let query = 'SELECT * FROM produk';
  const conditions = [];
  const params = [];

  if (category) {
    conditions.push('category = ?');
    params.push(category);
  }
  if (selling_type) {
    conditions.push('selling_type = ?');
    params.push(selling_type);
  }

  if (conditions.length > 0) {
    query += ' WHERE ' + conditions.join(' AND ');
  }

  db.query(query, params, (err, results) => {
    if (err) return res.status(500).json({ error: 'Database error' });
    res.json(results);
  });
});

router.get('/api/products/:id', (req, res) => {
  const query = 'SELECT * FROM produk WHERE id = ?';
  db.query(query, [req.params.id], (err, results) => {
    if (err) return res.status(500).json({ error: 'Database error' });
    if (results.length > 0) {
      res.json(results[0]);
    } else {
      res.status(404).json({ error: 'Produk tidak ditemukan' });
    }
  });
});

module.exports = router;
