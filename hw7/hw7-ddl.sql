# hw7-ddl.sql

USE 23FA_users_menberuy;

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;

# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    tag VARCHAR(50) NOT NULL,
    url VARCHAR(255) DEFAULT NULL,
    time_commitment VARCHAR(50) DEFAULT NULL
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!
INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES
(1, 'Frontend Development', 'Creating user interfaces and experiences for websites using HTML, CSS, and JavaScript.', 'Skill 1', 'https://example.com/frontend', '6 months'),
(2, 'Machine Learning', 'Building models and algorithms that enable computers to learn and make predictions.', 'Skill 2', 'https://example.com/machinelearning', '1 year'),
(3, 'Digital Marketing', 'Promoting products or services using digital channels and strategies.', 'Skill 3', 'https://example.com/digitalmarketing', '8 months'),
(4, 'Mobile App Development', 'Developing applications for smartphones and tablets on iOS and Android platforms.', 'Skill 4', 'https://example.com/mobileappdev', '1.5 years'),
(5, 'Graphic Animation', 'Creating animated graphics and visual effects for multimedia content.', 'Skill 5', 'https://example.com/graphicanimation', '1 year'),
(6, 'Cybersecurity', 'Protecting computer systems, networks, and data from security breaches and attacks.', 'Skill 6', 'https://example.com/cybersecurity', '2 years'),
(7, 'Content Writing', 'Producing written content for websites, blogs, and other digital platforms.', 'Skill 7', 'https://example.com/contentwriting', '6 months'),
(8, 'Database Management', 'Designing, implementing, and maintaining databases to store and manage data efficiently.', 'Skill 8', 'https://example.com/dbmanagement', '1.5 years');

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) DEFAULT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) DEFAULT NULL,
    linkedin_url VARCHAR(255) DEFAULT NULL,
    headshot_url VARCHAR(255) DEFAULT NULL,
    discord_handle VARCHAR(50) DEFAULT NULL,
    brief_bio TEXT DEFAULT NULL,
    date_joined DATE NOT NULL
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

-- Populate people
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) VALUES
(1, 'John', 'Person 1', 'john.person1@email.com', 'https://linkedin.com/in/johnperson1', 'https://example.com/johnperson1.jpg', 'johnperson1#1234', 'Passionate developer with a love for coding.', '2023-01-01'),
(2, 'Jane', 'Person 2', 'jane.person2@email.com', 'https://linkedin.com/in/janeperson2', 'https://example.com/janeperson2.jpg', 'janeperson2#5678', 'Experienced marketer with a focus on digital strategies.', '2023-02-15'),
(3, 'Alice', 'Person 3', 'alice.person3@email.com', 'https://linkedin.com/in/aliceperson3', 'https://example.com/aliceperson3.jpg', 'aliceperson3#9876', 'Graphic designer with a flair for creativity.', '2023-03-10'),
(4, 'Bob', 'Person 4', 'bob.person4@email.com', 'https://linkedin.com/in/bobperson4', 'https://example.com/bobperson4.jpg', 'bobperson4#4321', 'Data analyst passionate about deriving insights from data.', '2023-04-20'),
(5, 'Charlie', 'Person 5', 'charlie.person5@email.com', 'https://linkedin.com/in/charlieperson5', 'https://example.com/charlieperson5.jpg', 'charlieperson5#8765', 'Mobile app developer specializing in iOS development.', '2023-05-05'),
(6, 'Eva', 'Person 6', 'eva.person6@email.com', 'https://linkedin.com/in/evaperson6', 'https://example.com/evaperson6.jpg', 'evaperson6#2468', 'Cybersecurity enthusiast with a focus on ethical hacking.', '2023-06-30'),
(7, 'David', 'Person 7', 'david.person7@email.com', 'https://linkedin.com/in/davidperson7', 'https://example.com/davidperson7.jpg', 'davidperson7#1357', 'Content writer passionate about storytelling.', '2023-07-15'),
(8, 'Grace', 'Person 8', 'grace.person8@email.com', 'https://linkedin.com/in/graceperson8', 'https://example.com/graceperson8.jpg', 'graceperson8#9753', 'Language enthusiast exploring the world of linguistic diversity.', '2023-08-25'),
(9, 'Frank', 'Person 9', 'frank.person9@email.com', 'https://linkedin.com/in/frankperson9', 'https://example.com/frankperson9.jpg', 'frankperson9#3142', 'Database administrator ensuring efficient data management.', '2023-09-10'),
(10, 'Olivia', 'Person 10', 'olivia.person10@email.com', 'https://linkedin.com/in/oliviaperson10', 'https://example.com/oliviaperson10.jpg', 'oliviaperson10#2468', 'Digital marketing expert with a passion for online campaigns.', '2023-10-05');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skill_id INT NOT NULL,
    people_id INT NOT NULL,
    date_acquired DATE NOT NULL,
    FOREIGN KEY (skill_id) REFERENCES skills(id),
    FOREIGN KEY (people_id) REFERENCES people(id)
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

INSERT INTO peopleskills (skill_id, people_id, date_acquired) VALUES
-- Person 1
(1, 1, '2023-01-15'),  -- Skill 1
(3, 1, '2023-03-20'),  -- Skill 3
(6, 1, '2023-06-25'),  -- Skill 6

-- Person 2
(3, 2, '2023-03-20'),  -- Skill 3
(4, 2, '2023-04-05'),  -- Skill 4
(5, 2, '2023-05-10'),  -- Skill 5

-- Person 3
(1, 3, '2023-01-15'),  -- Skill 1
(5, 3, '2023-05-10'),  -- Skill 5

-- Person 4 (no skills)

-- Person 5
(3, 5, '2023-03-20'),  -- Skill 3
(6, 5, '2023-06-25'),  -- Skill 6

-- Person 6
(2, 6, '2023-02-10'),  -- Skill 2
(3, 6, '2023-03-20'),  -- Skill 3
(4, 6, '2023-04-05'),  -- Skill 4

-- Person 7
(3, 7, '2023-03-20'),  -- Skill 3
(5, 7, '2023-05-10'),  -- Skill 5
(6, 7, '2023-06-25'),  -- Skill 6

-- Person 8
(1, 8, '2023-01-15'),  -- Skill 1
(3, 8, '2023-03-20'),  -- Skill 3
(5, 8, '2023-05-10'),  -- Skill 5
(6, 8, '2023-06-25'),  -- Skill 6

-- Person 9
(2, 9, '2023-02-10'),  -- Skill 2
(5, 9, '2023-05-10'),  -- Skill 5
(6, 9, '2023-06-25'),  -- Skill 6

-- Person 10
(1, 10, '2023-01-15'),  -- Skill 1
(4, 10, '2023-04-05'),  -- Skill 4
(5, 10, '2023-05-10'); -- Skill 5

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    sort_priority INT
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (id, name, sort_priority) VALUES
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment
CREATE TABLE peopleroles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    people_id INT NOT NULL,
    role_id INT NOT NULL,
    date_assigned DATE NOT NULL,
    FOREIGN KEY (people_id) REFERENCES people(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES
-- Person 1
(1, 2, '2023-01-15'),  -- Developer

-- Person 2
(2, 5, '2023-02-20'),  -- Boss
(2, 6, '2023-02-20'),  -- Mentor

-- Person 3
(3, 2, '2023-03-25'),  -- Developer
(3, 4, '2023-03-25'),  -- Team Lead

-- Person 4
(4, 3, '2023-04-10'),  -- Recruit

-- Person 5
(5, 3, '2023-05-05'),  -- Recruit

-- Person 6
(6, 2, '2023-06-15'),  -- Developer
(6, 1, '2023-06-15'),  -- Designer

-- Person 7
(7, 1, '2023-07-20'),  -- Designer

-- Person 8
(8, 1, '2023-08-10'),  -- Designer
(8, 4, '2023-08-10'),  -- Team Lead

-- Person 9
(9, 2, '2023-09-05'),  -- Developer

-- Person 10
(10, 2, '2023-10-15'),  -- Developer
(10, 1, '2023-10-15');  -- Designer
