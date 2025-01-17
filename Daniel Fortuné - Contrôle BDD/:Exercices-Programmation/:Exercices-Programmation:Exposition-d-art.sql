
DROP DATABASE IF EXISTS exhibition;
CREATE DATABASE exhibition;
USE exhibition;


CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL
);


CREATE TABLE works (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL, 
    acquisition_date DATE NOT NULL, 
    catalog_number VARCHAR(255) NOT NULL,
    FOREIGN KEY (id) REFERENCES authors(id)
);


CREATE TABLE work_authors (
    work_id INT NOT NULL, 
    author_id INT NOT NULL,  
    PRIMARY KEY (work_id, author_id),
    FOREIGN KEY (work_id) REFERENCES works(id),
    FOREIGN KEY (author_id) REFERENCES authors(i)
);


CREATE TABLE exhibition_rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    number VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    artwork_count INT NOT NULL,         
    
);


CREATE TABLE exhibitions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_date DATE NOT NULL,           
    duration INT NOT NULL,              
    
    FOREIGN KEY (room_id) REFERENCES exhibition_rooms(id)
);


CREATE TABLE exhibition_works (
    work_id INT NOT NULL, 
    exhibition_id INT NOT NULL, 
    PRIMARY KEY (work_id, exhibition_id), 
    FOREIGN KEY (work_id) REFERENCES works(id),
    FOREIGN KEY (exhibition_id) REFERENCES exhibitions(id)  
);


CREATE TABLE work_loans (
    work_id INT NOT NULL, 
    owner_firstname VARCHAR(255) NOT NULL, 
    owner_lastname VARCHAR(255) NOT NULL, 
    owner_address VARCHAR(255) NOT NULL, 
    loan_start_date DATE NOT NULL, 
    loan_duration INT NOT NULL, 
    PRIMARY KEY (work_id),              
    FOREIGN KEY (work_id) REFERENCES works(id)
);


CREATE TABLE work_insurances (
    work_id INT NOT NULL,           
    insurance_amount DECIMAL(10, 2) NOT NULL,
    insured_value DECIMAL(10, 2) NOT NULL, 
    company_name VARCHAR(255) NOT NULL,     
    company_address VARCHAR(255) NOT NULL, 
    PRIMARY KEY (work_id),             
    FOREIGN KEY (work_id) REFERENCES works(id) 
);


CREATE TABLE owner_art_types (
    owner_firstname VARCHAR(255) NOT NULL, 
    owner_lastname VARCHAR(255) NOT NULL, 
    owner_address VARCHAR(255) NOT NULL,  
    art_type VARCHAR(255) NOT NULL,  
    PRIMARY KEY (owner_firstname, owner_lastname, owner_address, art_type)
);

