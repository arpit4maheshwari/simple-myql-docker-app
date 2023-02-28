LOAD DATA INFILE 'C:\Users\maheshwariar\OneDrive - Microsoft\Documents\Personal\Terras\data-20230210T100640Z-001\data\people.csv'
 INTO TABLE people
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\n'
 IGNORE 1 ROWS;