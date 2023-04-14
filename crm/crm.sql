-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS sales_activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS sales_persons;
DROP TABLE IF EXISTS industries;

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  companies_id INTEGER
);

CREATE TABLE sales_activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  companies_id INTEGER,
  contacts_id INTEGER,
  salesperson_id INTEGER,
  created_at TEXT,
  notes TEXT
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
);

CREATE TABLE sales_persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_name TEXT
);

CREATE TABLE industry_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industry_id INTEGER
);