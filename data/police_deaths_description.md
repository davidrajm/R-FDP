# Police Deaths

## Overview
`police_deaths.csv` contains cleaned historical data on U.S. law enforcement line-of-duty deaths, sourced from the [Officer Down Memorial Page](https://www.odmp.org/) (ODMP). 

The dataset powers analysis for stories like [The Dallas Shooting Was Among The Deadliest For Police In U.S. History](https://fivethirtyeight.com/features/the-dallas-shooting-was-among-the-deadliest-for-police-in-u-s-history/).

## Column Descriptions

| Column       | Data Type | Description                                                                 | Example Values              |
|--------------|-----------|-----------------------------------------------------------------------------|-----------------------------|
| `person`     | string    | Name of the fallen officer                                                  | "Constable Darius Quimby"   |
| `dept`       | string    | Full agency name with state abbreviation                                    | "Albany County Constable's Office, NY" |
| `eow`        | string    | End of watch (date of death) in narrative format                            | "EOW: Monday, January 3, 1791" |
| `cause`      | string    | Detailed cause of death                                                     | "Cause of Death: Gunfire"   |
| `cause_short`| string    | Abbreviated cause of death                                                  | "Gunfire"                   |
| `date`       | date      | Death date in YYYY-MM-DD format (cleaned)                                   | "1791-01-03"                |
| `year`       | integer   | Year of death                                                               | 1791                        |
| `canine`     | boolean   | Indicator for K9 officer death (tagged in cleaning)                         | FALSE                       |
| `dept_name`  | string    | Cleaned agency name                                                         | "Albany County Constable's Office" |
| `state`      | string    | U.S. state abbreviation (or "US" for federal)                               | "NY"                        |
