# Google BI Capstone project ( Cyclistic bike-share)
**Background:**
Cyclistic has partnered with the city of New York to provide shared bikes. Currently, there are bike stations located throughout Manhattan and neighboring boroughs. Customers are able to rent bikes for easy travel among stations at these locations. 

**Scenario:**
Creating a business plan for next year. They want to understand how their customers are using their bikes; their top priority is identifying customer demand at different station locations. Information gathered from your meeting notes to complete important project planning documents and generated useful target tables and ultimately build Dashboard

## Dashboard Planning and Stakeholder Requirements 
* Prepared project planning documents to identify key metrics and dashboard requirements
    * [Stakeholder Requirements](https://github.com/Sure5991/Google-Business-Intelligence-Professional/blob/main/Cyclistic%20bike-share%20BI%20Project/Stakeholder%20Requirements%20Document%20.docx)
    * [Project Requirements](https://github.com/Sure5991/Google-Business-Intelligence-Professional/blob/main/Cyclistic%20bike-share%20BI%20Project/Project%20Requirements%20Document%20.docx)
    *  [Strategy document](https://github.com/Sure5991/Google-Business-Intelligence-Professional/blob/main/Cyclistic%20bike-share%20BI%20Project/Strategy%20document.docx)

## ETL Process and Target Table generation
* Trip data was available monthwise which was extracted from all excel files to a database using [python](https://github.com/Sure5991/Google-Business-Intelligence-Professional/blob/main/Cyclistic%20bike-share%20BI%20Project/import_and_export_sql.ipynb)
* From database, Recent 12 months data was extracted using [SQL( procedures, functions)](https://github.com/Sure5991/Google-Business-Intelligence-Professional/blob/main/Cyclistic%20bike-share%20BI%20Project/SQL-cleaning%20and%20manipulation%20documentation.sql) and transferred to tempdata.
* Temp data was checked for duplicate, null values and datatime data was separated into date and duration 
* Finally merged geospatially with zipcode data for nieghbourhood and borough to create target table

## Dashboard Building ( Click [here](https://public.tableau.com/shared/ZJXRW625X?:display_count=n&:origin=viz_share_link) to view )
* Created sheets in Tableau based on Trip duartion and trip count from start location to end location, user based and metric based.
* Created dashboards based on requirements and into story mode for navigation 
