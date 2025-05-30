const express = require('express');
const path = require('path');
const mysql = require('mysql2');
const apiRoutes = require('./routes/index');

const app = express();

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'music_shop'
});

db.connect(err => {
  if (err) throw err;
  console.log('✅ Terhubung ke database!');
});

app.use(express.static(path.join(__dirname, 'public')));

app.use('/', apiRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`🚀 Server berjalan di http://localhost:${PORT}`);
});
