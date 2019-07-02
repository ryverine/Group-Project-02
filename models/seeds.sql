
	INSERT INTO locations (city, state)
    VALUES
		('Durham','NC'),
		('Chapel Hill','NC'),
        ('Raleigh','NC'),
        ('Greensboro','NC'),
        ('Charlotte','NC');


	INSERT INTO stores (name, description, addrln1, addrln2, zip, LocationID)
    VALUES
		('Cloud Vape Lounge','Cloud Vape Lounge:\nLorem ipsum sapien arcu aliquam condimentum risus ullamcorper orci integer, sem porta gravida id nam scelerisque maecenas at, porta curabitur viverra turpis vehicula facilisis porta lacus.\nQuis imperdiet tempus suscipit morbi vel faucibus ac dictumst pulvinar, pharetra sed aenean eget aenean risus sollicitudin viverra neque metus, feugiat mollis curae tincidunt vehicula nisl condimentum pulvinar non dolor dui rhoncus integer orci.\nHac fames euismod sagittis metus integer elit duis nec ante, odio nulla fringilla praesent adipiscing porttitor tellus ac, mollis tempus consequat urna interdum blandit egestas vivamus blandit rhoncus sem lorem praesent tellus volutpat orci.','88 Gobo St','','11111','1'),
		('Tobacco land & Vape Shop CBD Kratom Shop','Tobacco land & Vape Shop CBD Kratom Shop:\nLorem ipsum sapien arcu aliquam condimentum risus ullamcorper orci integer, sem porta gravida id nam scelerisque maecenas at, porta curabitur viverra turpis vehicula facilisis porta lacus.\nQuis imperdiet tempus suscipit morbi vel faucibus ac dictumst pulvinar, pharetra sed aenean eget aenean risus sollicitudin viverra neque metus, feugiat mollis curae tincidunt vehicula nisl condimentum pulvinar non dolor dui rhoncus integer orci.\nHac fames euismod sagittis metus integer elit duis nec ante, odio nulla fringilla praesent adipiscing porttitor tellus ac, mollis tempus consequat urna interdum blandit egestas vivamus blandit rhoncus sem lorem praesent tellus volutpat orci.','221 Frog Hop Ln','','11112','1'),
		('Smoke Rings Smoke Shop','Smoke Rings Smoke Shop:\nLorem ipsum sapien arcu aliquam condimentum risus ullamcorper orci integer, sem porta gravida id nam scelerisque maecenas at, porta curabitur viverra turpis vehicula facilisis porta lacus.\nQuis imperdiet tempus suscipit morbi vel faucibus ac dictumst pulvinar, pharetra sed aenean eget aenean risus sollicitudin viverra neque metus, feugiat mollis curae tincidunt vehicula nisl condimentum pulvinar non dolor dui rhoncus integer orci.\nHac fames euismod sagittis metus integer elit duis nec ante, odio nulla fringilla praesent adipiscing porttitor tellus ac, mollis tempus consequat urna interdum blandit egestas vivamus blandit rhoncus sem lorem praesent tellus volutpat orci.','733 Crab Claw Ct','','11113','1'),
		('Bubba's Bud Shop','','123 Main St','','21111','2'),
        ('Vape Naysh','','227 Green Ave','Block #34','21112','2'),
        ('Vapor River','','48 Bop-town Rd','','21113','2'),
		('TOBACCO OUTLET & Vape Shop','','734 Blam St','','31111','3'),
        ('The Wick And Coil Vape Shop','','86 Rocky Ln','','31112','3'),
        ('Countryside Vaporz','','1229 Bobo St','','31113','3'),
        ('Vapers Ink','','144 Blue St','','41111','4'),
        ('Stratus Smoke & Vape','','12 Yellow Rd','','41112','4'),
        ('AVAIL Vapor','','889 Red Cr','','41113','4'),
        ('A and D Vapors','','729 Jackson Sq','','51111','5'),
        ('Local Liquids Vape Shop','','832 Washington St','','51112','5'),
        ('Haven Smoke & Vape','','2030 Williams Ln','','51113','5');
       

INSERT INTO products (name, description, brand, quantity, price, StoreID)
VALUES
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 1),
	('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 534, 49.99, 1),
	('LUCID KIT', 'description', 'GEEK VAPE', 205, 42.00, 1),
    ('600MG NATURAL DAILY OILS', 'description', 'Camel City Hemp', 97, 79.99, 2),
	('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 2),
    ('ICE MONSTER MANGERINE GUAVA', 'description', 'JAM MONSTER', 15, 29.99, 2),
	('NO. 71 SWEET AND SOUR PEACH', 'description', 'BEARD VAPE CO.', 57, 28.99, 3),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 3),
    ('LUCID KIT', 'description', 'GEEK VAPE', 205, 42.00, 3),
    ('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 563, 49.99, 4),
    ('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 4),
    ('600MG NATURAL DAILY OILS', 'description', 'Camel City Hemp', 97, 79.99, 4),
    ('LUCID KIT', 'description', 'GEEK VAPE', 205, 42.00, 5),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 5),
    ('NO. 71 SWEET AND SOUR PEACH', 'description', 'BEARD VAPE CO.', 57, 28.99, 5),
    ('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 6),
    ('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 123, 49.99, 6),
    ('NO. 71 SWEET AND SOUR PEACH', 'description', 'BEARD VAPE CO.', 57, 28.99, 6),
    ('ICE MONSTER MANGERINE GUAVA', 'description', 'JAM MONSTER', 15, 29.99, 7),
    ('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 7),
    ('600MG NATURAL DAILY OILS', 'description', 'Camel City Hemp', 97, 79.99, 7),
	('600MG NATURAL DAILY OILS', 'description', 'Camel City Hemp', 97, 79.99, 8),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 8),
    ('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 8),
    ('NO. 71 SWEET AND SOUR PEACH', 'description', 'BEARD VAPE CO.', 57, 28.99, 9),
	('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 643, 49.99, 9),
	('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 9),
    ('LUCID KIT', 'description', 'GEEK VAPE', 205, 42.00, 10),
	('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 9282, 49.99, 10),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 10),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 11),
    ('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 534, 49.99, 11),
    ('600MG NATURAL DAILY OILS', 'description', 'Camel City Hemp', 97, 79.99, 11),
    ('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 12),
    ('LUCID KIT', 'description', 'GEEK VAPE', 205, 42.00, 12),
    ('NO. 71 SWEET AND SOUR PEACH', 'description', 'BEARD VAPE CO.', 57, 28.99, 12),
    ('ICE MONSTER MANGERINE GUAVA', 'description', 'JAM MONSTER', 15, 29.99, 13),
    ('NO. 71 SWEET AND SOUR PEACH', 'description', 'BEARD VAPE CO.', 57, 28.99, 13),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 13),
    ('300MG CITRUS DAILY OILS', 'description', 'Camel City Hemp', 122, 49.99, 14),
    ('LUCID KIT', 'description', 'GEEK VAPE', 205, 42.00, 14),
    ('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 14),
	('NO. 32 CINNAMON FUNNEL CAKE NS', 'description', 'BEARD VAPE CO.', 100, 19.99, 15),
    ('ORION Q ALL-IN-ONE POD SYSTEM', 'description', 'LOST VAPE', 33, 45.00, 15),
    ('ICE MONSTER MANGERINE GUAVA', 'description', 'JAM MONSTER', 15, 29.99, 15);
    
    
    
    INSERT INTO users (id, first_name,last_name,email,password)
    VALUES
	("1", "Matthew", "Allen", "matt@dankcity.com", "Welcome001"),
	("2", "Isabella","Merendino","isabella@dankcity.com", "Welcome002"),
	("3", "Jared","Test","jared@dankcity.com", "Welcome003"),
	("4", "Ryan","Cheek","ryan@dankcity.com", "Welcome004");
    

 INSERT INTO store_comments (id, comment, updatedAt, StoreID, UserID) 
    VALUES
    (1, "test comment 1", now(), now(), 1, 1),
    (2, "test comment 2", now(), now(), 2, 2),
    (3, "test comment 3", now(), now(), 3, 3),
    (4, "test comment 4", now(), now(), 4, 4),
    (5, "test comment 5", now(), now(), 5, 1),
    (6, "test comment 6", now(), now(), 6, 2),
    (7, "test comment 7", now(), now(), 7, 3),
    (8, "test comment 8", now(), now(), 8, 4),
    (9, "test comment 9", now(), now(), 9, 1),
    (10, "test comment 10", now(), now(), 10, 2),
    (11, "test comment 11", now(), now(), 11, 3),
    (12, "test comment 12", now(), now(), 12, 4),
    (13, "test comment 13", now(), now(), 13, 1),
    (14, "test comment 14", now(), now(), 14, 2),
    (15, "test comment 15", now(), now(), 15, 3),
	(16, "test comment 16", now(), now(), 1, 3),
    (17, "test comment 17", now(), now(), 2, 2),
    (18, "test comment 18", now(), now(), 8, 1),
    (19, "test comment 19", now(), now(), 9, 4),
    (20, "test comment 20", now(), now(), 10, 3),
    (21, "test comment 21", now(), now(), 11, 2),
    (22, "test comment 22", now(), now(), 15, 1),
    (23, "test comment 23", now(), now(), 13, 4),
    (24, "test comment 24", now(), now(), 5, 3),
    (25, "test comment 25", now(), now(), 6, 2),
    (26, "test comment 26", now(), now(), 12, 1),
    (27, "test comment 27", now(), now(), 7, 4),
    (28, "test comment 28", now(), now(), 8, 3),
    (29, "test comment 29", now(), now(), 14, 2),
    (30, "test comment 30", now(), now(), 4, 1);
    
    
    
    
    
    
    






























