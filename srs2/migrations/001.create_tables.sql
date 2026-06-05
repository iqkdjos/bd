DROP SCHEMA IF EXISTS water_shop CASCADE;
CREATE SCHEMA IF NOT EXISTS water_shop;

SET search_path TO water_shop;

-- создание таблицы manufacturer
CREATE TABLE IF NOT EXISTS manufacturer (
    manufacturer_id SERIAL PRIMARY KEY,
    manufacturer_name VARCHAR(255) NOT NULL,
    year_founded INT NOT NULL,
    country VARCHAR(255) NOT NULL,
    CONSTRAINT unique_manufacturer_name_country UNIQUE (manufacturer_name, country),
    CONSTRAINT check_manufacturer_name_not_empty CHECK (
        LENGTH(TRIM(manufacturer_name)) > 0
    ),
    CONSTRAINT check_manufacturer_name_uppercase CHECK (
        manufacturer_name = UPPER(manufacturer_name)
    ),
    CONSTRAINT check_country_not_empty CHECK (
        LENGTH(TRIM(country)) > 0
    ),
    CONSTRAINT check_country_uppercase CHECK (
        country = UPPER(country)
    ),
    CONSTRAINT check_year_founded_valid CHECK (
        year_founded > 0 
        AND year_founded <= EXTRACT(YEAR FROM CURRENT_DATE)
    )
);

-- создание таблицы water
CREATE TABLE IF NOT EXISTS water (
    water_id SERIAL PRIMARY KEY,
    water_name VARCHAR(255) NOT NULL,
    manufacturer_id INT NOT NULL,
    type VARCHAR(255) NOT NULL,
    price INT NOT NULL CHECK (price >= 0),
    source_location VARCHAR(255) NOT NULL,
    CONSTRAINT fk_water_manufacturer
        FOREIGN KEY (manufacturer_id)
        REFERENCES manufacturer(manufacturer_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT check_water_name_uppercase CHECK (
        water_name = UPPER(water_name)
    ),
    CONSTRAINT check_type_not_empty CHECK (
        LENGTH(TRIM(type)) > 0
    ),
    CONSTRAINT check_type_uppercase CHECK (
        type = UPPER(type)
    ),
    CONSTRAINT check_source_location_not_empty CHECK (
        LENGTH(TRIM(source_location)) > 0
    ),
    CONSTRAINT check_source_location_uppercase CHECK (
        source_location = UPPER(source_location)
    )
);

-- создание таблицы minerals
CREATE TABLE IF NOT EXISTS minerals (
    mineral_id SERIAL PRIMARY KEY,
    minerals_name VARCHAR(255) NOT NULL,
    formula VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    CONSTRAINT unique_mineral_name UNIQUE (minerals_name),
    CONSTRAINT unique_mineral_formula UNIQUE (formula),
    CONSTRAINT check_minerals_name_not_empty CHECK (
        LENGTH(TRIM(minerals_name)) > 0 
    ),
    CONSTRAINT check_minerals_name_uppercase CHECK (
        minerals_name = UPPER(minerals_name)
    ),
    CONSTRAINT check_formula_not_empty CHECK (
        LENGTH(TRIM(formula)) > 0
    ),
    CONSTRAINT check_formula_uppercase CHECK (
        formula = UPPER(formula)
    ),
    CONSTRAINT check_description_not_empty CHECK (
        LENGTH(TRIM(description)) > 0
    ),
    CONSTRAINT check_description_uppercase CHECK (
        description = UPPER(description)
    )
);

-- создание таблицы water_minerals
CREATE TABLE IF NOT EXISTS water_minerals (
    water_id INT NOT NULL,
    mineral_id INT NOT NULL,
    from_value DECIMAL(5,2) NOT NULL CHECK (from_value >= 0),
    to_value DECIMAL(5,2) NOT NULL CHECK (to_value >= 0),
    PRIMARY KEY (water_id, mineral_id),
    CONSTRAINT fk_wm_water
        FOREIGN KEY (water_id)
        REFERENCES water(water_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_wm_minerals
        FOREIGN KEY (mineral_id)
        REFERENCES minerals(mineral_id)
        ON DELETE RESTRICT,
    CONSTRAINT chk_range CHECK (to_value >= from_value)
);