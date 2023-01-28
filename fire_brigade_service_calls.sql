WITH property_types AS
  (SELECT DISTINCT property_type, Count(property_type) AS occurence_value
  FROM bigquery-public-data.london_fire_brigade.fire_brigade_service_calls
  GROUP BY property_type
  ORDER BY occurence_value DESC)

SELECT *
FROM property_types