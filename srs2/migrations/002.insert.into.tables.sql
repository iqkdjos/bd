SET search_path TO water_shop;

-- заполнение таблицы manufacturer
INSERT INTO manufacturer (manufacturer_name, year_founded, country) VALUES
('BONAQUA', 1994, 'RUSSIA'),
('EVIAN', 1992, 'FRANCE'),
('PERRIER', 1863, 'FRANCE'),
('SAN PELLEGRINO', 1899, 'ITALY'),
('VITTEL', 1854, 'FRANCE'),
('COCA-COLA HBC', 1969, 'GREECE'),
('NESTLÉ WATERS', 1992, 'SWITZERLAND'),
('GEROLSTEINER', 1888, 'GERMANY'),
('BORJOMI', 1890, 'GEORGIA'),
('ACQUA PANNA', 1880, 'ITALY'),
('AQUA MINERALE', 2001, 'POLAND');

-- заполнение таблицы water
INSERT INTO water (water_name, manufacturer_id, type, price, source_location) VALUES
('BONAQUA STILL', 1, 'STILL', 5500, 'MOSCOW REGION'),
('EVIAN STILL', 2, 'STILL', 12000, 'FRENCH ALPS'),
('PERRIER ORIGINAL', 3, 'SPARKLING', 15000, 'VERGEZE, FRANCE'),
('SAN PELLEGRINO CLASSIC', 4, 'SPARKLING', 18000, 'SAN PELLEGRINO TERME'),
('VITTEL GRAND SOURCE', 5, 'STILL', 11000, 'VOSGES, FRANCE'),
('COCA-COLA HBC PURE', 6, 'STILL', 7000, 'RUSSIA'),
('NESTLÉ PURE LIFE', 7, 'SPARKLING', 13000, 'GERMANY'),
('GEROLSTEINER CLASSIC', 8, 'SPARKLING', 9500, 'GEROLSTEIN, GERMANY'),
('BORJOMI NATURAL', 9, 'SPARKLING', 20000, 'BORJOMI, GEORGIA'),
('ACQUA PANNA STILL', 10, 'STILL', 8500, 'TUSCANY, ITALY'),
('AQUA MINERALE NATURAL', 11, 'STILL', 5000, 'POLAND'),
('BONAQUA SPARKLING', 1, 'SPARKLING', 6500, 'MOSCOW REGION'),
('EVIAN SPARKLING', 2, 'SPARKLING', 14000, 'FRENCH ALPS');

-- заполнение таблицы minerals
INSERT INTO minerals (minerals_name, formula, description) VALUES
('CALCIUM', 'CA', 'IMPORTANT FOR BONES'),
('MAGNESIUM', 'MG', 'SUPPORTS MUSCLE FUNCTION'),
('SODIUM', 'NA', 'ELECTROLYTE BALANCE'),
('POTASSIUM', 'K', 'HEART AND NERVE FUNCTION'),
('BICARBONATE', 'HCO3', 'NEUTRALIZES ACID'),
('SULFATE', 'SO4', 'DETOXIFICATION'),
('CHLORIDE', 'CL', 'OSMOTIC BALANCE'),
('SILICA', 'SIO2', 'SKIN AND JOINTS'),
('IRON', 'FE', 'OXYGEN TRANSPORT'),
('FLUORIDE', 'F', 'TEETH HEALTH'),
('NITRATE', 'NO3', 'LIMITED IN WATER');

-- заполнение таблицы water_minerals
INSERT INTO water_minerals (water_id, mineral_id, from_value, to_value) VALUES
(1, 1, 20.0, 35.0),
(1, 2, 10.0, 15.0),
(1, 3, 5.0, 8.0),
(2, 1, 80.0, 100.0),
(2, 5, 300.0, 360.0),
(2, 2, 25.0, 30.0),
(3, 3, 10.0, 20.0),
(3, 6, 30.0, 40.0),
(3, 7, 15.0, 22.0),
(4, 1, 50.0, 60.0),
(4, 4, 5.0, 7.0),
(4, 5, 150.0, 180.0),
(5, 2, 25.0, 30.0),
(5, 5, 250.0, 280.0),
(5, 8, 10.0, 15.0),
(6, 1, 15.0, 25.0),
(6, 2, 8.0, 12.0),
(7, 3, 12.0, 18.0),
(7, 6, 20.0, 28.0),
(8, 6, 35.0, 45.0),
(8, 7, 10.0, 14.0),
(9, 5, 350.0, 400.0),
(9, 3, 25.0, 35.0),
(10, 1, 40.0, 50.0),
(10, 2, 15.0, 20.0),
(10, 5, 200.0, 240.0),
(11, 2, 8.0, 12.0),
(11, 3, 4.0, 6.0),
(12, 3, 5.0, 10.0),
(12, 1, 18.0, 25.0);