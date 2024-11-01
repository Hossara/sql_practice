USE test_db;

/*
CREATE TABLE table_name (
    column1 definition1,
    column2 definition2,
    column3 definition3,
    ...
    constraints
);

منظور از definition در هنگام ساخت جداول مجموعه‌ای از نوع داده و محدودیت‌هایی است که هر ستون دارد که معمولاً به فرم است:

data_type constraints
*/

/*
PRIMARY KEY 	این ستون را به‌عنوان کلید اصلی در نظر می‌گیرد.
AUTO_INCREMENT 	هر بار که یک رکورد جدید اضافه می‌شود، به‌طور خودکار مقدار فیلد ۱ واحد افزایش داده می‌شود.
UNIQUE 	تمامی مقادیر موجود در این ستون باید منحصر‌به‌فرد باشند.
NOT NULL 	مقدار NULL برای این ستون مجاز نیست.
DEFAULT `value` 	اگر هنگام درج داده هیچ مقداری برای این ستون در نظر گرفته نشود، مقدار value در نظر گرفته می‌شود.
UNSIGNED 	برای داده‌های عددی به کار می‌رود و فقط مقادیر نامنفی (مثبت و صفر) را می‌پذیرد.
*/

CREATE TABLE users (
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   level ENUM('user', 'admin') NOT NULL DEFAULT 'user',
   name VARCHAR(45) NOT NULL,
   family VARCHAR(45) NOT NULL,
   birth_date DATETIME
);

/* لیست جدول ها */
SHOW TABLES;

/* مشاهده ساختار جدول */
DESCRIBE users;

/* حذف جدول  */
# DROP TABLE table_name;
DROP TABLE IF EXISTS table_name;


CREATE DATABASE hospital;