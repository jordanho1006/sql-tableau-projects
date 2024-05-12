# City of Angel's Watch: Mapping LA's Crime Dashboard
Amidst the dynamic urban landscape of Los Angeles, understanding crime trends and patterns is paramount for effective law enforcement, community engagement, and policymaking. The City of Angel's Watch: Mapping LA's Crime dashboard aims to provide a comprehensive analysis and visualization platform for exploring crime data from the heart of LA. Leveraging datasets from the Los Angeles City Open Data portal, this project employs Python for data cleaning and preparation, Tableau for visualization and dashboard creation, and Excel for initial data formatting.

Access the live dashboard on Tableau Public: [City of Angel's Watch: Mapping LA's Crime Dashboard](https://public.tableau.com/app/profile/jordan.ho1006/viz/CityofAngelsWatchMappingLAsCrimeWIP/Dashboard1)

## Project Overview
This documentation serves as a guide for navigating the City of Angel's Watch: Mapping LA's Crime dashboard, providing insights into the project's scope, tools, data exploration process, dashboard components, and future recommendations.

### Project Scope
The project takes a narrative approach to analyzing crime data from Los Angeles City, delving into metrics such as case counts, investigations, weapon-related incidents, and temporal patterns of criminal activity. Through meticulous data analysis and visualization, the dashboard aims to craft a compelling narrative that uncovers insights into crime trends, hotspots, and demographic patterns within Los Angeles City. By weaving together data-driven storytelling with interactive visualizations, the project provides stakeholders with a comprehensive understanding of the city's crime landscape.

### Tools and Technologies
The project utilizes Python for data cleaning, preparation, and analysis, leveraging libraries such as Pandas, NumPy, and MatPlotLib. Tableau serves as the primary tool for visualization and dashboard creation, offering interactive charts, maps, and visualizations to explore crime data comprehensively. Excel is used for initial data formatting and organization, ensuring compatibility with Tableau.

## Data Exploration
The crime dataset sourced from Los Angeles City's Open Data portal contains detailed information on reported incidents from 2010 to the present. The data exploration phase involves Python scripts for data cleaning and preparation, transforming raw data into actionable insights. Key steps include handling missing values, standardizing data formats, and deriving new variables for analysis.

## Tableau Dashboard
The City of Angel's Watch: Mapping LA's Crime dashboard features a range of interactive components designed to provide a holistic view of crime trends and patterns in Los Angeles City. From key performance indicators (KPIs) to detailed breakdowns of crime types, premises, and temporal patterns, the dashboard offers policymakers and communities an intuitive platform for exploring crime data.

### Dashboard Components
- **Key Performance Indicators (KPIs):**
  - Total case count
  - Investigations continued
  - Weapon-related cases
- **Area/Line Chart:**
  - Case count by year
  - Investigations continued by year
  - Armed cases by year
- **Matrix Table:**
  - Case count breakdown by year and month
- **Histogram:**
  - Frequency of cases by time of day (24 hours)
- **Heat Map:**
  - Incident density heatmap
- **Bar Chart:**
  - Premise type breakdown
  - Criminal charge breakdown
  - Weapon type in armed cases breakdown
- **Pie Chart:**
  - Breakdown of armed cases out of all cases

## Project Conclusion
Insights gathered from the dashboard highlight various facets of criminal activity in Los Angeles:

- Temporal Patterns: Criminal activity peaks around noon and 6 pm, reflecting increased commercial activities and rush hour dynamics. Understanding these patterns can inform the allocation of resources for proactive policing measures during specific hours of the day.
- Crime Surges: From 2014 to 2017, crime surged by 20.15%, attributed to factors such as gang activity, legislative changes, and growing homeless populations. Similarly, during the COVID-19 pandemic in 2020, weapon-related crimes surged, driven by increased gun sales and economic distress.
- Socio-Economic Disparities: Areas with high poverty and unemployment rates experience elevated levels of crime, emphasizing the need for targeted intervention programs and community development initiatives.
- Weapon-Related Crimes: A significant surge in weapon-related crimes since 2013 underscores systemic inequalities and the prevalence of gang activity, particularly affecting Black and Hispanic/Latino communities.
- Theft Incidents: Over 1.6 million theft-related crimes reported in Los Angeles City highlight the impact of socioeconomic factors and legislative classifications on crime trends.

In response to these insights, Los Angeles must adopt a multifaceted approach to address rising crime rates:

- Enhanced Community Policing: Strengthen community policing initiatives with increased presence in high-crime areas during peak hours to build trust and collaboration between law enforcement agencies and local communities.
- Targeted Intervention Programs: Develop intervention programs to address root causes of crime, focusing on poverty alleviation, access to education, and social services.
- Legislative Reforms: Advocate for legislative reforms to address systemic inequalities, strengthen gun control measures, and provide alternatives to incarceration for non-violent offenders.
- Community Development and Empowerment: Invest in economic development initiatives, affordable housing, healthcare, and social services to uplift disadvantaged neighborhoods and empower residents.

By implementing these strategies, Los Angeles can mitigate crime rates, promote public safety, and foster inclusive and thriving communities for all residents.


### Recommendations and Future Work
- Continuously update the dashboard with the latest crime data from the Los Angeles City Open Data portal.
- Enhance interactivity and user experience by incorporating additional filters and drill-down options.
- Conduct further analysis to identify correlations between crime metrics and demographic factors such as population density and socio-economic status.

## Files Included
- ['City of Angel's Watch Mapping LA's Crime.twb'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/City%20of%20Angel's%20Watch%3A%20Mapping%20LA's%20Crime/City%20of%20Angel's%20Watch%20Mapping%20LA's%20Crime.twb): This file is the Tableau workbook that contains all the visuals, dashboards, and supporting local file data and background images.
- ['City_of_Angel's_Watch_Mapping_LA's_Crime.png'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/City%20of%20Angel's%20Watch%3A%20Mapping%20LA's%20Crime/City_of_Angel's_Watch_Mapping_LA's_Crime.png): A still image of the interactive dashboard created on Tableau Desktop. *Note: These are just images of the interactive dashboards*
- ['Data_Cleaning_LA_Crime_2010_Present.ipynb'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/City%20of%20Angel's%20Watch%3A%20Mapping%20LA's%20Crime/Data_Cleaning_LA_Crime_2010_Present.ipynb): This file provides the Python script used for data cleaning and preparation.
- ['README.md'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/City%20of%20Angel's%20Watch%3A%20Mapping%20LA's%20Crime/README.md): This file provides an overview of the project.

## References
- [Los Angeles City Open Data Portal - Crime Data from 2010 to 2019](https://data.lacity.org/Public-Safety/Crime-Data-from-2010-to-2019/63jg-8b9z/about_data)
- [Los Angeles City Open Data Portal - Crime Data from 2020 to Present](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)

This project aims to illuminate the complex dynamics of crime in Los Angeles City, fostering data-driven decision-making and community engagement in addressing urban safety challenges.
