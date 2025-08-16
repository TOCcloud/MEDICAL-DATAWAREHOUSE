/********************************************************************************************
* WARNING ⚠️
* Running this script will DROP the existing database `medical_data_ware_house` if it exists,
* along with ALL its schemas and data. Proceed with caution!
*
* Purpose:
*   - Create a fresh database for medical data warehousing
*   - Implement a multi-schema architecture (Bronze, Silver, Gold layers)
*
* Layers:
*   1. bronze_layer → Raw ingested data
*   2. sliver_layer → Cleaned & transformed data
*   3. gold_layer   → Aggregated & business-ready data
********************************************************************************************/

-- Drop database if it already exists (⚠️ this will delete all data inside it)
DROP DATABASE IF EXISTS medical_data_ware_house;

-- Create a new database
CREATE DATABASE medical_data_ware_house;

-- Highlight the first line (CREATE DATABASE) and run it first in pgAdmin
-- Then, select the Query Tool from the newly created database and run the rest:

-- Create schemas for data layers
CREATE SCHEMA bronze_layer;
CREATE SCHEMA sliver_layer;
CREATE SCHEMA gold_layer;
