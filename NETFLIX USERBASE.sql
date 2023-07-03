
-- CREATE DATABASE netflix_userbase; 

-- USE netflix_userbase; 

/*CREATE TABLE customers(
	UID int primary key auto_increment,
    member_name varchar(8) not null,
    subscription_type varchar(8) not null,
    gender varchar(6),
    age varchar(2) not null,
    country varchar(16) not null
    ); */
    
    /* INSERT INTO customers (
			member_name,
            subscription_type,
            gender,
            age,
            country
            )
	VALUES 
			("Reuben","Basic","Male","28","United States"),
            ("Kresha","Premium", "Female", "35", "Canada"),
            ("Karlo","Standard", "Male", "42", "United Kingdom"),
            ("Camille","Standard", "Female", "51", "Australia"),
            ("Arnel","Basic", "Male", "33", "Germany"),
            ("Thea","Premium","Female","29","France"),
            ("Ian","Standard", "Male", "46", "Brazil"),
            ("Ella","Basic", "Female", "39", "Mexico"),
            ("Cristian","Standard", "Male", "37", "Spain"),
            ("Jassy","Premium", "Female", "44", "Italy"),
            ("Emy","Basic", "Female", "31", "United States"),
            ("Anton","Premium", "Male", "45", "Canada"),
            ("Jane","Standard", "Female", "48","United Kingdom"),
            ("Dan","Basic", "Male", "27", "Australia"),
            ("Faith","Standard", "Female", "38", "Germany"); */
            
    /* CREATE TABLE subscriptions(
		UID int primary key auto_increment,
        monthly_revenue int not null,
		join_date date not null,
		last_payment_date date not null,
		device varchar(11) not null,
		plan_duration_month int not null);*/
        
   /*INSERT INTO subscriptions (
            monthly_revenue,
            join_date,
            last_payment_date,
            device,
            plan_duration_month
            )
	VALUES 
			(10, "2022-01-15", "2023-06-10", "Smartphone", 1),
            (15, "2021-09-05", "2023-06-22", "Tablet", 1),
            (12, "2023-02-28", "2023-06-27", "Smart TV", 1),
            (12, "2022-07-10", "2023-06-26", "Laptop", 1),
            (10, "2023-05-01", "2023-06-28", "Smartphone", 1),
            (15, "2022-03-18", "2023-06-27", "Smart TV", 1),
            (12, "2021-12-09", "2023-06-25", "Tablet", 1),
            (10, "2023-04-02", "2023-06-24", "Laptop", 1),
            (12, "2022-10-20", "2023-06-23", "Smartphone", 1),
            (15, "2023-01-07", "2023-06-22", "Smart TV", 1),
            (10, "2022-05-16", "2023-06-22", "Smartphone", 1),
            (15, "2023-03-23", "2023-06-28", "Tablet",1),
            (12, "2021-11-30", "2023-06-27", "Laptop", 1),
            (10, "2022-08-01", "2023-06-26", "Smartphone", 1),
            (12, "2023-05-09", "2023-06-28", "Smart TV", 1);*/
            
    -- SHOW ALL SUBSCRIBERS USING STANDARD SUBSCRIPTIONS USING DEVICES SMART PHONE AND SMART TV.
    
    /* SELECT c.UID, MEMBER_NAME, SUBSCRIPTION_TYPE, DEVICE
        FROM CUSTOMERS c 
		JOIN SUBSCRIPTIONS s 
            on c.UID = s.UID
		where subscription_type = "Standard" and device in("Smartphone","Smart TV"); */
        
	-- SHOW SUBSCRIBERS THAT ARE AGES 32 ABOVE WITH TABLET AND SMARTPHONE AS DEVICE ACCORING TO MEMBER'S NAME
    
   SELECT *
		FROM CUSTOMERS c 
        JOIN SUBSCRIPTIONS S
			ON c.UID = S.UID,
		WHERE AGE >= 32 AND DEVICE IN("TABLET", "MARTPHONE"),
        ORDER BY MEMBER_NAME;
	