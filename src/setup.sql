CREATE TABLE organization_projects (
	organization_id SERIAL PRIMARY KEY,
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

-- *****************************************
-- CREATING PROJECTS TABLE
-- *****************************************

CREATE TABLE projects (
project_id SERIAL PRIMARY KEY,
organization_id INT NOT NULL,
title VARCHAR(150) NOT NULL,
description TEXT NOT NULL,
location VARCHAR(150) NOT NULL,
date DATE NOT NULL,

FOREIGN KEY (organization_id)
REFERENCES organization_projects(organization_id)
)

-- *****************************************
-- INSERTING INTO PROJECTS TABLE
-- *****************************************

INSERT INTO projects (organization_id, title, description, location, date)
VALUES (
1, 
'Community Connect', 
'A project that educates youth on substancce abuse.',
'Woodlands, Stutterheim',
'2027-02-17'
),
(
1, 
'Community CleanUp', 
'A project that encourages the community to take initiative 
in cleaning their local environment.',
'Ndevana, King Williams Town',
'2026-12-05'
),
(
1, 
'Youth Empowerment Day', 
'A motivational event encouraging young people to develop leadership and life skills.',
'Ubukhu Hall, Stutterheim',
'2027-01-25'
),
(
1, 
'Food for Families', 
'Food parcels are distributed to vulnerable families in the community.',
'Mlungisi Township, Stutterheim',
'2026-12-25'
),
(
1, 
'School Supplies Drive', 
'Stationery and learning materials are collected for underprivileged learners.',
'Thembalabantu High School, Zwelitsha Zone 6',
'2027-01-12'
),
(
2, 
'Recycling for Tomorrow', 
'A recycling campaign encourages households to reduce waste.',
'Upper Zeleni, Stutterheim',
'2027-02-22'
),
(
2, 
'Tree Planting Initiative', 
'Indigenous trees are planted to improve local green spaces and biodiversity.',
'Upper Zeleni, Stutterheim',
'2027-04-19'
),
(
2, 
'Protect our Wildlife', 
'An awareness campaign educates residents about protecting local wildlife.',
'Amathole Region, Stutterheim',
'2027-02-27'
),
(
2, 
'Elderly Care Visitis', 
'Volunteers visit elderly residents and assist with basic household needs.',
'Mlungisi Township, Stutterheim',
'2027-02-20'
),
(
2, 
'Community Sports Day',
 'A sports event promoting teamwork, physical activity and community involvement.',
 'Stutterheim', 
 '2027-03-13'
 ),
 (
 3, 
 'Reading Opens Doors',
 'Volunteers organize reading sessions to improve literacy among children.',
 'Stutterheim', '2026-12-10'),
(
3, 
'Digital Skills Workshop',
 'Community members receive basic computer and digital literacy training.',
 'Stutterheim', 
 '2026-12-17'
 ),
(
3, 
'Girls in Technology',
 'Young girls explore technology and learn about opportunities in STEM careers.',
 'Stutterheim', 
 '2027-01-14'),
(
3, 
'Career Discovery Day',
 'Professionals introduce learners to different career paths and opportunities.',
 'Stutterheim', 
 '2027-01-28'),
(
3, 
'After-School Mentorship',
 'Volunteers provide academic guidance and mentorship to school learners.',
 'Mlungisi Township', 
 '2027-02-11');
