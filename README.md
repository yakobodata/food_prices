# Exploring the prices of Maize flour in Uganda
About Dataset
Context:

Global food price fluctuations can cause famine and large population shifts. Price changes are increasingly critical to policymakers as global warming threatens to destabilize the food supply.
Content:

Over 740k rows of prices obtained in developing world markets for various goods. Data includes information on country, market, price of good in local currency, quantity of good, and month recorded.
Acknowledgements:

Compiled by the World Food Program and distributed by HDX.
Inspiration:

This data would be particularly interesting to pair with currency fluctuations, weather patterns, and/or refugee movements--do any price changes in certain staples predict population upheaval? Do certain weather conditions influence market prices?
License:

Released under Chttps://www.kaggle.com/datasets/jboysen/global-food-prices?resource=downloadC BY-IGO.


# Open the csv in Excel
I take a look at the data in excel first to know the kind of headers that am dealing with 
![Taking a look at the data set in excel ](images/take a look at the dataset.png "Take a look at the dataset")

# Log into sql 
I log into sql using ubuntu terminal to create a database where the data will be imported to

![Logging into sql](images/logging_into_sql_using_ubuntu_terminal.png "Logging in")

# Create a Database to hold the file
![create database ]('images/create_database_for_food_prices.png')

# Show databases in the mysql server to show that the database has been created 
![show databases ]('images/show_databases.png')

# Create a table in the newly created database
![create table ]('images/create_table_to_hold_all_data_from_excel.png')

# Close the mysql server
![Quit the mysql server]('images/quit.png')

# Open the mysql server while enabling it to import data from another file
![Log in mysql server to accept imports]('images/Login_again_but_allow_local_import_files.png')

# Import All the Data from other csv file into the newly created table
![Import data from the csv file to sql]('images/successfully_imported_excel_data_into_sql.png')

# check to confirm the import of the data
![Confirming the import]('images/look_at_the_inside_of the_table.png')

# Change the column data columns to their appropiate data types

![Change the data types](images/change data_types of columns.png "Change columns")

# Conclusion 
- The Data was collected in eight different years
- The Data was collected in seven districts
- The currency that was used was UGX
- The standard deviation of the prices of maize flour was UGX469.14
- The average price of Maize Flour was 1694.10 UGX 





