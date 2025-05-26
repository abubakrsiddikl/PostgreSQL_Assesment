-- Create rangers Table
CREATE Table rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
);

-- Create species Table
CREATE Table species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50),
    scientific_name VARCHAR(50),
    discovery_date DATE,
    conservation_status VARCHAR(50)
);

-- Create sightings Table
CREATE Table sightings (
    sighting_id SERIAL PRIMARY KEY,
    species_id INTEGER REFERENCES species (species_id),
    ranger_id INTEGER REFERENCES rangers (ranger_id),
    location VARCHAR(50),
    sighting_time TIMESTAMP,
    notes VARCHAR(50) DEFAULT NULL
);

-- Problem 1
INSERT INTO
    rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains');

-- Problem 2
SELECT count(DISTINCT species_id) AS unique_species_count
FROM sightings;

-- Problem 3
SELECT * FROM sightings WHERE location LIKE '%Pass%';

-- Problem 4
SELECT r.name as ranger_name, count(DISTINCT s.sighting_id)
FROM rangers as r
    LEFT JOIN sightings as s on r.ranger_id = s.ranger_id
GROUP BY
    r.name;

-- Problem 5
SELECT s.species_id, s.common_name
FROM species as s
    LEFT JOIN sightings as si ON s.species_id = si.species_id
WHERE
    si.sighting_id IS NULL;

-- Problem 6
SELECT * FROM sightings ORDER BY sighting_time DESC LIMIT 2;

-- Problem 7
UPDATE species
SET conservation_status = 'Historic'
WHERE discovery_date < '1800-01-01';

-- Problem 08
SELECT 
  sighting_id,
  species_id,
  ranger_id,
  location,
  sighting_time,
  notes,
  CASE 
    WHEN EXTRACT(HOUR FROM sighting_time) < 12 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM sighting_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
  END AS time_of_day
FROM sightings;

-- Problem 9
DELETE FROM rangers
WHERE ranger_id NOT IN (
  SELECT DISTINCT ranger_id
  FROM sightings
);


