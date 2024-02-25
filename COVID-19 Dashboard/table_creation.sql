-- Specifying the specific database name
USE covid_data

-- Exploring entire COVID-19 dataset acquired from https://ourworldindata.org/covid-deaths
SELECT *
FROM dbo.covid_data


-- Creating covid_deaths table from dataset
SELECT
    iso_code,
    continent,
    location,
    date,
    population,
    total_cases,
    new_cases,
    new_cases_smoothed,
    total_deaths,
    new_deaths,
    new_deaths_smoothed,
    total_cases_per_million,
    new_cases_per_million,
    new_cases_smoothed_per_million,
    total_deaths_per_million,
    new_deaths_per_million,
    new_deaths_smoothed_per_million,
    reproduction_rate,
    icu_patients,
    icu_patients_per_million,
    hosp_patients,
    hosp_patients_per_million,
    weekly_icu_admissions,
    weekly_icu_admissions_per_million,
    weekly_hosp_admissions,
    weekly_hosp_admissions_per_million,
    total_tests
INTO covid_deaths
FROM dbo.covid_data;

-- Creating covid_vaccinations table from dataset
SELECT
    iso_code,
    continent,
    location,
    date,
    new_tests,
    total_tests_per_thousand,
    new_tests_per_thousand,
    new_tests_smoothed,
    new_tests_smoothed_per_thousand,
    positive_rate,
    tests_per_case,
    tests_units,
    total_vaccinations,
    people_vaccinated,
    people_fully_vaccinated,
    total_boosters,
    new_vaccinations,
    new_vaccinations_smoothed,
    total_vaccinations_per_hundred,
    people_vaccinated_per_hundred,
    people_fully_vaccinated_per_hundred,
    total_boosters_per_hundred,
    new_vaccinations_smoothed_per_million,
    new_people_vaccinated_smoothed,
    new_people_vaccinated_smoothed_per_hundred,
    stringency_index,
    population_density,
    median_age,
    aged_65_older,
    aged_70_older,
    gdp_per_capita,
    extreme_poverty,
    cardiovasc_death_rate,
    diabetes_prevalence,
    female_smokers,
    male_smokers,
    handwashing_facilities,
    hospital_beds_per_thousand,
    life_expectancy,
    human_development_index,
    excess_mortality_cumulative_absolute,
    excess_mortality_cumulative,
    excess_mortality,
    excess_mortality_cumulative_per_million
INTO covid_vaccinations
FROM dbo.covid_data;

-- Removing raw dataset table from database
DROP TABLE dbo.covid_data;

-- Retrieving column data types and correcting them accordingly
SELECT 
    column_name, 
    data_type
FROM 
    information_schema.columns
WHERE 
    table_name = 'covid_deaths';

SELECT 
    column_name, 
    data_type
FROM 
    information_schema.columns
WHERE 
    table_name = 'covid_vaccinations';


-- Modify data types of selected columns in covid_deaths table
ALTER TABLE covid_deaths
ALTER COLUMN total_cases float;

ALTER TABLE covid_deaths
ALTER COLUMN total_deaths float;

ALTER TABLE covid_deaths
ALTER COLUMN total_cases_per_million float;

ALTER TABLE covid_deaths
ALTER COLUMN total_deaths_per_million float;

ALTER TABLE covid_deaths
ALTER COLUMN reproduction_rate float;

ALTER TABLE covid_deaths
ALTER COLUMN icu_patients float;

ALTER TABLE covid_deaths
ALTER COLUMN icu_patients_per_million float;

ALTER TABLE covid_deaths
ALTER COLUMN hosp_patients float;

ALTER TABLE covid_deaths
ALTER COLUMN hosp_patients_per_million float;

ALTER TABLE covid_deaths
ALTER COLUMN weekly_icu_admissions float;

ALTER TABLE covid_deaths
ALTER COLUMN weekly_icu_admissions_per_million float;

ALTER TABLE covid_deaths
ALTER COLUMN weekly_hosp_admissions float;

ALTER TABLE covid_deaths
ALTER COLUMN weekly_hosp_admissions_per_million float;

ALTER TABLE covid_deaths
ALTER COLUMN total_tests float;

-- Modify data types of selected columns in covid_vaccinations table
ALTER TABLE covid_vaccinations
ALTER COLUMN new_tests float;

ALTER TABLE covid_vaccinations
ALTER COLUMN total_tests_per_thousand float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_tests_per_thousand float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_tests_smoothed float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_tests_smoothed_per_thousand float;

ALTER TABLE covid_vaccinations
ALTER COLUMN positive_rate float;

ALTER TABLE covid_vaccinations
ALTER COLUMN tests_per_case float;

ALTER TABLE covid_vaccinations
ALTER COLUMN total_vaccinations float;

ALTER TABLE covid_vaccinations
ALTER COLUMN people_vaccinated float;

ALTER TABLE covid_vaccinations
ALTER COLUMN people_fully_vaccinated float;

ALTER TABLE covid_vaccinations
ALTER COLUMN total_boosters float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_vaccinations float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_vaccinations_smoothed float;

ALTER TABLE covid_vaccinations
ALTER COLUMN total_vaccinations_per_hundred float;

ALTER TABLE covid_vaccinations
ALTER COLUMN people_vaccinated_per_hundred float;

ALTER TABLE covid_vaccinations
ALTER COLUMN people_fully_vaccinated_per_hundred float;

ALTER TABLE covid_vaccinations
ALTER COLUMN total_boosters_per_hundred float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_vaccinations_smoothed_per_million float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_people_vaccinated_smoothed float;

ALTER TABLE covid_vaccinations
ALTER COLUMN new_people_vaccinated_smoothed_per_hundred float;

ALTER TABLE covid_vaccinations
ALTER COLUMN extreme_poverty float;

ALTER TABLE covid_vaccinations
ALTER COLUMN female_smokers float;

ALTER TABLE covid_vaccinations
ALTER COLUMN male_smokers float;

ALTER TABLE covid_vaccinations
ALTER COLUMN excess_mortality_cumulative float;

ALTER TABLE covid_vaccinations
ALTER COLUMN excess_mortality_cumulative_absolute float;

ALTER TABLE covid_vaccinations
ALTER COLUMN excess_mortality float;

ALTER TABLE covid_vaccinations
ALTER COLUMN excess_mortality_cumulative_per_million float;