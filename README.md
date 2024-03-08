# Cyclists bike_trips  analysis

### Project Overview

The goal of this project is to analyze bike trips data of a company, which rents different types of bikes to people and it has two types of customers, annual member riders and casual riders. The main objective is to identify how do annual members and casual riders use bikes differently and convert casual riders into members.

This data analysis project focuses on various bike_trip data aspects which help in determining data insights, identifying trends and patterns to make data-driven recommendations.

### Data Sources

Cyclists bike_trip data: [cyclists tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)(The data is a public source and owned by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement)). For this project, the whole 12 months data for 2023 is considered for the data analysis.

### Tools

- Excel - Data cleaning, transformation and analysis
- SQL server - Data analysis(wrote a few queries)
- Excel and Power BI - Visualizations

### Data cleaning/Preparation

In the first stage, below are taken care:
1. Downloaded and inspected the quality of data.
2. Missing values are addressed and checked for duplicates.
3. Data is cleaned and formatted for accuracy and consistency.

### Exploratory Data Analysis

In this process, we need find out the answers to below questions:

- What is the total casual and annual members count?
- How their average ride length look like?
- Are there any trends or patterns that tell us the rise or fall of the riders?
- How was the trend on an average day of the week?

### Data Analysis

Data is analysed in excel using functions like average, max, and percentage etc. and as a part of analysis pivot tables are created for the summary.
Also, analysis is done through SQL(wrote a few queries attached to this repo), an example below:

```sql
SELECT avg(ride_len) FROM bike_trip
WHERE member_casual = members
group by member_casual
```
### Analysis Findings/Results

1. Though the annual members were the highest number of customers for the company in 2023, casual riders are riding the longest.

  - Members count - 64%
  - Casuals count - 36%

    But average ride_length for casual riders is higher than the members.

2. Casual bike trips were mostly happening during weekends while members renting them out mostly on weekdays.
3. Highest bike trips were taken place during Q3(July, August and September).

### Recommendations

1. Can initiate a marketing campaign focusing on casual riders considering their ride time.
2. Any special offers or benefits since casual riders ride most during weekends.
3. Accomodating more resources like bikes, stations and staff during Q3.







