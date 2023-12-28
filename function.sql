-- Function to count how many cars were were sold to a puchaser from a certain country
CREATE OR REPLACE FUNCTION get_country_count(car_country varchar(20))
RETURNS INT AS $$
DECLARE
    country_count INT;
BEGIN
    SELECT COUNT(*)
    INTO country_count
    FROM purchaser
    WHERE country = car_country;
    RETURN country_count;
END;
$$ LANGUAGE plpgsql;
