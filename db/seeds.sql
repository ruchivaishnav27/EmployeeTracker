INSERT INTO roles
  (title, salary, department_id)
VALUES
  ('CEO', 1000000.00, 0),
  ('COO', 750000.00, 1),
  ('President', 500000.00, 2),
  ('Vice President', 250000.00, 3),
  ('Finance Manager', 100000.00, 4),
  ('Marketing Manager', 90000.00, 5),
  ('Human Resources Manager', 80000.00, 6),
  ('Accountant', 70000.00, 7),
  ('Marketing Specialist', 60000.00, 8),
  ('Human Resource Personnel', 50000.00, 9);
  
INSERT INTO department
  (name)
VALUES
  ('Executive'),
  ('Administrative'),
  ('Finance'),
  ('Marketing'),
  ('Human Resources');

INSERT INTO employees
  (first_name, last_name, roles_id, manager_id)
VALUES
  ('Arnold', 'Zhang', 0, 1),
  ('Beth', 'Young', 1, 1),
  ('Charles', 'Wilson', 2, 1),
  ('Diana', 'Vaughn', 3, 1),
  ('Ethan', 'Underhill', 4, 1),
  ('Fiona', 'Tucker', 5, 1),
  ('Gary', 'Summers', 6, 1),
  ('Heena', 'Roy', 6, 1),
  ('Isaac', 'Potter', 5, 1),
  ('Julie', 'Oh', 4, 1);
  ('Kenneth', 'Nash', 7, 0),
  ('Lily', 'Moore', 8, 0),
  ('Mike', 'Livingston', 9, 0),
  ('Nisha', 'Khanna', 9, 1),
  ('Oliver', 'Jacobs', 8, 0),
  ('Penelope', 'Irving', 7, 0),
  ('Ron', 'Hughes', 7, 0),
  ('Sarah', 'Garcia', 8, 0),
  ('Tom', 'Finn', 9, 0),
  ('Urmila', 'Evans', 9, 0);
  ('Vivek', 'Deol', 8, 0),
  ('Wendy', 'Carter', 7, 0),
  ('Yolanda', 'Burns', 7, 0),
  ('Zor', 'Atkins', 8, 0),
  ('Anita', 'Zahir', 9, 0),
  ('Bob', 'Yankee', 9, 0),
  ('Carie', 'Watkins', 8, 0),
  ('Dustin', 'Vance', 7, 0),
  ('Esha', 'Umaid', 7, 0),
  ('Floyd', 'Thompson', 8, 0),
  ('Gita', 'Singh', 9, 0),
  ('Harold', 'Richardson', 9, 0),
  ('Inaya', 'Pedrosa', 8, 0),
  ('James', 'Oakes', 7, 0);
  ('Kelly', 'Nair', 7, 0),
  ('Lennie', 'Morgan', 8, 0),
  ('Maya', 'Lopez', 9, 0),
  ('Nihal', 'Kapoor', 9, 0),
  ('Olivia', 'Jarvis', 8, 0),
  ('Peter', 'Ivy', 7, 0),
  ('Ria', 'Hanson', 6, 1),
  ('Sam', 'Green', 5, 1),
  ('Tina', 'Furlong', 4, 1),
  ('Ulysses', 'Erkens', 4, 1);
  ('Victoria', 'Davidson', 5, 1),
  ('Wong', 'Choi', 6, 1),
  ('Yam', 'Bates', 3, 1),
  ('Zara', 'Abraham', 2, 1),
  ('Simon', 'Turner', 1, 1),
  ('Nancy', 'Brooks', 0, 1);
  
  