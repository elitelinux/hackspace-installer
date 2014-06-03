#mysql -uroot -p
CREATE DATABASE canvas_production;
CREATE DATABASE canvas_development;
CREATE DATABASE canvas_queue_production;
CREATE DATABASE canvas_queue_development;
GRANT ALL PRIVILEGES ON canvas_production.* TO canvas@localhost IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON canvas_queue_production.* TO canvas@localhost IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON canvas_development.* TO canvas@localhost IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON canvas_queue_development.* TO canvas@localhost IDENTIFIED BY '';
