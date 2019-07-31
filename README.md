# Wine Reviews ETL

A project for the UT Data Analysis Boot Camp by [gthesing](https://github.com/gthesing) and [kristxh](https://github.com/kristxh)

<br>

## Project Description
#### Extract
* The initial data for this project was downloaded as a csv file from a [Kaggle dataset](https://www.kaggle.com/zynicide/wine-reviews) scraped from WineEnthusiast by Kaggle user [zackthoutt](https://www.kaggle.com/zynicide)
* From there, we ran a series of Google API calls to return geographic coordinates for wineries; the code for the API calls can be found [here](https://github.com/gthesing/wine-ETL/blob/master/raw_data/geo_data/geo_data.ipynb)
#### Transform
* In the [main notebook](https://github.com/gthesing/wine-ETL/blob/master/ETL_final.ipynb) the geographic data was combined with the original dataset into a Pandas dataframe. Some initial cleaning was required to remove duplicates or incomplete entries, as well as to ensure numerical values were formatted properly.  If a review didn't have geographic data for its associated winery, it was dropped from the dataframe.  Additionally each unique bottle title was assigned an index number. 
* Three different dataframes were created to represent the SQL database tables we would be loading:
   1. Location: one entry for each winery with geographical data, including winery, province (if applicable), country, latitude, and longitude 
   2. Review: one entry for each review, with data for the reviewer's name, description, score, and price
   3. Bottle ID: one entry for each bottle title, with data for its variety and winery of origin
#### Load 
* The database and schema were created in [db.sql](https://github.com/gthesing/wine-ETL/blob/master/db.sql) in preparation for loading from the ETL notebook
* SQLAlchemy and PyMySQL were used to create a connection with the database. From there Pandas was used to load the three dataframes to the SQL database as tables, and to run a few queries to confirm that the data had been loaded correctly

<br>

## Order to run files for duplicating this project:
1. [raw_data/geo_data/geo_data.ipynb](https://github.com/gthesing/wine-ETL/blob/master/raw_data/geo_data/geo_data.ipynb)  
    * This file made the necessary API calls to Google to get, and create a csv file of, the geographical data for wineries in our raw data set
2. [db.sql](https://github.com/gthesing/wine-ETL/blob/master/db.sql)
    * Creates the empty database and schema, ready for data load 
3. [ETL_final.ipynb](https://github.com/gthesing/wine-ETL/blob/master/ETL_final.ipynb)
    * Extracts, transforms, and loads all data to SQL database 
