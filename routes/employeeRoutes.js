const express = require('express');
const router = express.Router();
const db = require('../../db/connection');
const inputCheck = require('../../utils/inputCheck');

// Get all employees and their departments
router.get('/employees', (req, res) => {
  const sql = `SELECT employees.*, departments.name 
                AS departments_name 
                FROM employees 
                LEFT JOIN departments 
                ON employees.departments_id = departments.id`;

  db.query(sql, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json({
      message: 'success',
      data: rows
    });
  });
});

// Get single employees with party affiliation
router.get('/employees/:id', (req, res) => {
  const sql = `SELECT employees.*, departments.name 
               AS departments_name 
               FROM employees 
               LEFT JOIN departments 
               ON employees.departments_id = departments.id 
               WHERE employees.id = ?`;
  const params = [req.params.id];

  db.query(sql, params, (err, row) => {
    if (err) {
      res.status(400).json({ error: err.message });
      return;
    }
    res.json({
      message: 'success',
      data: row
    });
  });
});

// Create a employees
router.post('/employees', ({ body }, res) => {
  const errors = inputCheck(
    body,
    'first_name',
    'last_name',
    'manager_id'
  );
  if (errors) {
    res.status(400).json({ error: errors });
    return;
  }

  const sql = `INSERT INTO employees (first_name, last_name, manager_id, roles_id) VALUES (?,?,?,?)`;
  const params = [
    body.first_name,
    body.last_name,
    body.manager_id,
    body.roles_id
  ];

  db.query(sql, params, (err, result) => {
    if (err) {
      res.status(400).json({ error: err.message });
      return;
    }
    res.json({
      message: 'success',
      data: body
    });
  });
});

// Update an employees' department
router.put('/employees/:id', (req, res) => {
  const errors = inputCheck(req.body, 'departments_id');
  if (errors) {
    res.status(400).json({ error: errors });
    return;
  }

  const sql = `UPDATE employees SET departments_id = ? 
               WHERE id = ?`;
  const params = [req.body.party_id, req.params.id];

  db.query(sql, params, (err, result) => {
    if (err) {
      res.status(400).json({ error: err.message });
    } else if (!result.affectedRows) {
      res.json({
        message: 'Employee not found'
      });
    } else {
      res.json({
        message: 'success',
        data: req.body,
        changes: result.affectedRows
      });
    }
  });
});

// Delete an employee
router.delete('/employees/:id', (req, res) => {
  const sql = `DELETE FROM employees WHERE id = ?`;
  const params = [req.params.id];

  db.query(sql, params, (err, result) => {
    if (err) {
      res.status(400).json({ error: res.message });
    } else if (!result.affectedRows) {
      res.json({
        message: 'Employee not found'
      });
    } else {
      res.json({
        message: 'deleted',
        changes: result.affectedRows,
        id: req.params.id
      });
    }
  });
});

module.exports = router;
