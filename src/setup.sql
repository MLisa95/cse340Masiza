CREATE TABLE organization_projects (
	project_id SERIAL PRIMARY KEY,
	project_name TEXT NOT NULL,
	description VARCHAR(150) NOT NULL,
	email VARCHAR(100) NOT NULL,
	logo_filename VARCHAR(255) NOT NULL
);

-- ***************************************
-- Inserting Organizations sample data
-- ***************************************

INSERT INTO organization_projects (project_name, description, email, logo_filename)
VALUES (
	'BrightFuture Builders', 
	'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 
	'info@brightfuturebuilders.org',
	'brightfuture-logo.png'
),
(
	'GreenHarvest Growers', 
	'An urban farming collective promoting food sustainability and education in local neighbourhoods.',
	'contact@greenharvest.org',
	'greenharvest-logo.png'
),
(
    'UnityServe Volunteers', 
    'A volunteer coordination group supporting local charities and service initiatives.',
    'hello@unityserve.org',
    'unityserve-logo.png'
);