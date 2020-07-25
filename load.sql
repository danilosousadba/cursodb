SET @file_name
set @table_name
set @db_name


LOAD DATA INFILE @file_name
    INTO TABLE @db_name.@table_name
    COLUMNS TERMINATED BY ','
    IGNORE 1 LINES;
