DROP TABLE IF EXISTS category CASCADE;
CREATE TABLE category 
(
    category_id CHAR(4) PRIMARY KEY,
    category VARCHAR(50) 
);

DROP TABLE IF EXISTS subcategory CASCADE;
CREATE TABLE subcategory 
(
    subcategory_id CHAR(8) PRIMARY KEY,
    subcategory VARCHAR(50)
);

DROP TABLE IF EXISTS contacts CASCADE;
CREATE TABLE contacts 
(
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

DROP TABLE IF EXISTS campaign;
CREATE TABLE campaign 
(
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100),
    description VARCHAR(100),
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(10),
    backers_count INT,
    country CHAR(2),
    currency CHAR(3),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id CHAR(4),
    subcategory_id CHAR(8),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
