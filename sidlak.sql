CREATE TABLE IF NOT EXISTS category(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);
CREATE TABLE IF NOT EXISTS question(id INTEGER PRIMARY KEY AUTOINCREMENT, category_id INTEGER NOT NULL, content TEXT NOT NULL, is_correct INTEGER);
CREATE TABLE IF NOT EXISTS answer(question_id INTEGER, content TEXT, is_true INTEGER);

/* INSERTING CATEGORIES */


INSERT INTO category(name) VALUES ('Matter');
INSERT INTO category(name) VALUES ('Living Things');
INSERT INTO category(name) VALUES ('Force and Motion');
INSERT INTO category(name) VALUES ('Earth');


/* INSERTING QUESTIONS MATTER */

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials can easily absorb water?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Raincoat', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bath Towel', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Styropore Cup', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ball', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials do not absorb water?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Towel', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Cotton Balls', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Tissue Paper', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials is a natural absorber of water?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Cotton', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Raincoat', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Metal', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials float in water?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Big Stone', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Metal Spoon', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Empty Plastic Bottle', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Glass', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials have the ability to sink in the water?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Metal Spoon', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wood', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic Sheet', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Twigs', 0);

INSERT INTO question (category_id, content) VALUES (1, 'The following materials can float, except one.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic Bottle with Cover', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bamboo Stem', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Log', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Iron Bar', 1);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials undergo decay?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Fish', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Metal Spoon', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Styropore', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials do not undergo decay?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Dead Animals', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic Straw', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Leaves', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bark of Trees', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which of the following materials undergo decay?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Plastic Spoon', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Rubber Ball', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Metal Pot', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Banana Leaves', 1);

INSERT INTO question (category_id, content) VALUES (1, 'Which attributes do solid objects possess?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Shape and Color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Shape and Volume', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Texture and Weight', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Size and Shape', 1);

INSERT INTO question (category_id, content) VALUES (1, 'The following are the different characteristics of a solid, except for one.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Size', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Shape', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Cut', 1);

INSERT INTO question (category_id, content) VALUES (1, 'Folding, tearing and crumpling does not change which materials'' attribute?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Shape', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Size', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Price', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Texture', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which action can we apply onto a paper to change it?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Tear', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Touch', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Feel', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Press', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What doesn''t happen to a solid material when it is pressed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Change its shape', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Change to a new material', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Change its physical appearance', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Change in size', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Which among these materials cannot be pressed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Banana', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Hard Wood', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Clay', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Dough', 0);

INSERT INTO question (category_id, content) VALUES (1, 'Do solid materials change to a new material when pressed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Yes', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Maybe', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None of these', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens when cooking-oil and water are mixed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Completely Mix', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Form Two Layers', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Settle at the Bottom', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens when soy sauce and vinegar are mixed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Completely Mix', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Form Two Layers', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Cannot Be Mixed', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens when alcohol and water are mixed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Completely Mix', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Form Two Layers', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Settle at the Bottom', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens when tacks and staple-wires are mixed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Cannot be distinguished', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Can be easily identified', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Completely Mix', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What will happen to a margarine when heated?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Melts', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Contracts', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Becomes Solid', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens to the chocolate bar when heated?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No changes', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Contracts', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Changes into liquid', 1);

INSERT INTO question (category_id, content) VALUES (1, 'What happens to an ice-cube when heated?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Changes back to Liquid', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Becomes Solid', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No changes', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens to water when cooled?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Becomes solid', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Melts', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Expands', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens to a cooking-oil when cooled?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Melts', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Contracts', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Expands', 0);

INSERT INTO question (category_id, content) VALUES (1, 'What happens to an ice-candy when cooled?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Expand', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Melt', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Contract', 1);

INSERT INTO question (category_id, content) VALUES (1, 'Household substances like pesticides, kerosene and other chemicals are helpful to man, but it could also cause pollution. Which of the following situation makes these substances cause pollution?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pesticides drained in canals', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Smoke from burned plastics', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Decaying garbage in an open field', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of the above', 1);

INSERT INTO question (category_id, content) VALUES (1, 'Some changes in the material are harmful to the environment. In what way can these changes in materials be harmful?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Using both sides of the paper in writing', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Using eco bag when buying groceries', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Using aerosol hair sprays and insecticides', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Using recycled bottle in planting', 0);


INSERT INTO question (category_id, content) VALUES (1, 'Which of the following describes the harmful effect of throwing detergents, chemical waste and decaying materials into the bodies of water.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Fish and other living organisms in the water will die', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Aquatic animals will have more oxygen supply', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The living organisms in the water will not be affected', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Fish and aquatic plants will grow fast', 0);


INSERT INTO question (category_id, content) VALUES (1, 'Pollution is one of the harmful effects in the changes of the materials. Which of the following best describes the harmful effects of the pollution?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pollution makes plants and animals healthy', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pollution makes the environment safe and clean', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pollution causes some diseases and ailments', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pollution beautifies the environment', 0);


/* INSERTING QUESTIONS LIVING THINGS */

INSERT INTO question (category_id, content) VALUES (2, 'This organ is where the final digestion and absorption of food takes place.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Small Intestine', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stomach', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Esophagus', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Liver', 0);

INSERT INTO question (category_id, content) VALUES (2, 'This organ filters the oxygen that enters the body.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heart', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Liver', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Muscles', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Lungs', 1);

INSERT INTO question (category_id, content) VALUES (2, 'Which organ pumps the blood, allowing the distribution of nutrients in all parts of the body?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heart', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Lungs', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Kidneys', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Brain', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which organ is the command center of the body?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Blood', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heart', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Brain', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stomach', 0);

INSERT INTO question (category_id, content) VALUES (2, 'This is is where the final digestion and absorption of food takes place?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Small Intestine', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stomach', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Esophagus', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Liver', 0);

INSERT INTO question (category_id, content) VALUES (2, 'One of the main parts of the muscular system that are like tough cords that attach muscles to bones.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ligaments', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Tendons', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Muscles', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ulna', 0);

INSERT INTO question (category_id, content) VALUES (2, 'It is the main part of the muscular system that are tough tissue and connects bones directly to other bones. They stabilize and support the joints by holding the bones in place.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pectoralis', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Tendons', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ligaments', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Tendons', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which blood vessel carries oxygen-rich blood from the heart to the different parts of the body?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Capillaries', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Artery', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Vein', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heart', 0);

INSERT INTO question (category_id, content) VALUES (2, 'What blood vessel transports oxygen-poor blood from the parts of the body back to the heart?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Capillaries', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Artery', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Vein', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Blood', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which blood vessel does the exchange of gases take place?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Capillaries', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Artery', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Vein', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Venules', 0);

INSERT INTO question (category_id, content) VALUES (2, 'This carries the oxygen, carbon dioxide and nutrients needed by the cells throughout the body.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Lymph', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Blood', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Alveoli', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heart', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which group of animals are found on water habitat?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Tadpole, Grashopper, Hawk', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Dolphin, Carabao, Hawk', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Horse, Goat, Monkey', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Fish, Squid, Crab', 1);

INSERT INTO question (category_id, content) VALUES (2, 'Animals use their legs to move from place to place. How do cows, carabaos, horses and goats use their hooves?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Too keep them warm', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Helps them move in water', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Helps them walk even on hard rocks', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'For chewing grass and leaves', 0);

INSERT INTO question (category_id, content) VALUES (2, 'How are frogs, snakes and grasshoppers protected from their prey?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They play dead', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They blend color with their environment', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They mimic the shape, smell and sound of their prey', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They secrete a poisonous substance', 0);

INSERT INTO question (category_id, content) VALUES (2, 'One morning, my younger sister waters her plant. Among her plants, she noticed that gabi leaves has more water on its top or we call morning dew. What do you call the protected structure that prevents damage of the inner part of this plant?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Thorns', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Waxy Stem', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Waxy Leaves', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bad Taste', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Mang Erning is a farmer. Last month, he planted his field with sugarcane and corn. Every weekend, he visits his plants to remove weeds. He also cultivates the soil by means of plow. He uses shirts with long sleeves so that his skin would not brush against the leaves of his plant. How do these plants protect themselves from enemies?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Their leaves have hair-like structure', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bad smell', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Their leaves taste bitter', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Their leaves have thorns', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Some plants such as cacti and other plants in the desert can grow in dry soil for a long period of time. They withstand the heat of the Sun. What structure helps them respond to and survive in their environment?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They have thick bark', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They have sharp leaf blades', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They have fine hair', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'They possess thick fleshy stems that prevents water loss', 1);

INSERT INTO question (category_id, content) VALUES (2, 'Last week my friend received a birthday gift from his father. It was a big-mouthed clear jar with a plant floating on it. What do you think is the plant inside the jar?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Orchids', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Waterlily', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Rosal', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Onion', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which of the following plants is an example of a terrestrial plant?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Talahib', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Duckweeds', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Algae', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sea Lettuce', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Bulbs are underground leaves that store food. Which of the following plants grow from bulbs?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Onions', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Potato', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Radish', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ginger', 0);

INSERT INTO question (category_id, content) VALUES (2, 'How many cotyledons does the monocot seed have?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'One', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Two', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Three', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Four', 0);

INSERT INTO question (category_id, content) VALUES (2, 'What is the third stage in complete metamorphosis called?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pupa', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Egg', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Adult', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None', 0);

INSERT INTO question (category_id, content) VALUES (2, 'How many stages of development are present in an incomplete metamorphosis?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'One', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Two', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Three', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Incomplete metamorphosis has how many stages?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Two', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Four', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Three', 1);

INSERT INTO question (category_id, content) VALUES (2, 'What is the larva of a butterfly called?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Caterpillar', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Maggot', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wriggler', 0);

INSERT INTO question (category_id, content) VALUES (2, 'What is the larva of a fly called?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Caterpillar', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Maggot', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wriggler', 0);

INSERT INTO question (category_id, content) VALUES (2, 'What is the larva of a mosquito called?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Caterpillar', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Maggot', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wriggler', 1);

INSERT INTO question (category_id, content) VALUES (2, 'What is the third stage in the life cycle of a butterfly called?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Egg', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Larva', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pupa', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Adult', 0);

INSERT INTO question (category_id, content) VALUES (2, 'It is considered as the most destructive stage in the life cycle of a butterfly?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Egg', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Larva', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pupa', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Adult', 0);

INSERT INTO question (category_id, content) VALUES (2, 'It is an area where both the living and non-living things interact with one another.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ecology', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Habitat', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ecosystem', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Community', 0);

INSERT INTO question (category_id, content) VALUES (2, 'What is the term used for when plants and animals of different species live in the same environment.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ecology', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Habitat', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ecosystem', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Community', 1);

INSERT INTO question (category_id, content) VALUES (2, 'What is the term used for the group of plants and animals of the same species living in the same environment.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ecosystem', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Population', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Community', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Habitat', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which of these interactions are considered parasitic?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Ticks feeding on a dog', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bees transporting pollen from flowers', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pilotfish swimming under sharks', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Birds eating the insects from the back of Hippo', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Maria and her classmates are observing animals at the pond. They notice that wood-storks and ibisies both feed on fish. Which of these describes the relationship between these two birds?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Parasitism', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Competition', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Predator and Prey', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Producer and Consumer', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which of these describes a mutually beneficial relationship between two organisms?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A Dog with worms in its intestine', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A Turtle and a snail that both eat grass live in a river', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A Honeybee pollinating a plant and receiving nectar for food', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A Small Fish attached to a Shark, eating tiny pieces of the Shark food remains as it floats', 0);

INSERT INTO question (category_id, content) VALUES (2, 'Which of the examples below can best be described as mutualism between animals?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A Tapeworm lives in the intestine of a Bird and consumes food that the it has eaten', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Mountain Lions and Wolves fight each other for the same food', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A Bird eats parasites off a Rhinoceros while the Rhinoceros provides protection to the Bird', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Rats live in the garbage dump of a town and rarely interact with people', 0);

INSERT INTO question (category_id, content) VALUES (2, 'A relationship where one organism benefits and another is harmed.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Commensalism', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Parasitism', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Mutualism', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Competition', 0);



/* QUARTER 3 FORCE AND MOTION */

INSERT INTO question (category_id, content) VALUES (3, 'What happens to a chocolate bar when pressed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'There is a change in size and shape', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'There is a change in color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A new material is formed', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The chocolate bar remains the same', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Marianne tore a rectangular piece of paper! What will happen to the tored piece?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The piece of paper changed in color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The piece of paper looked the same', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The piece of paper changed to liquid', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The piece of paper changed in shape', 1);

INSERT INTO question (category_id, content) VALUES (3, 'Father bents pieces of wire to make a bird cage. What is the effect of force when applied on the wire?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It changed color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'There is a change in shape', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'There is a change in size and taste', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The wire became longer', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Mother pounded half-a-kilo of corn grains to be fed to the chickens. What happens to the corn grains when force is applied to it?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The corn grains looked the same', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A new material was formed', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The corn grains changed in shape', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The corn grains changed in size and shape', 1);

INSERT INTO question (category_id, content) VALUES (3, 'What causes objects to move?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Weight', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Gravity', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Force', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Magnets', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Which among the following objects require a greater force to move?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Refrigerator', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Study table', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Mono block chair', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Television', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Which among the objects below require lesser force to move?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Notebook', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pencil', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Blackboard eraser', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Book', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Fill in the blanks. "The greater the mass, the greater is the force needed to <BLANK> the object."');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Move', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stop', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Roll', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Push', 1);

INSERT INTO question (category_id, content) VALUES (3, 'If you are to push a cart, a box and a bicycle to a certain distance from the starting point, which will require you to exert a greater force?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Cart', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heavy box', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bicycle', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of them', 0);

INSERT INTO question (category_id, content) VALUES (3, 'When does a standing still marble moves?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Kept inside a box', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Placed on the corner of the room', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'A force is applied on the marble', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of these', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Fill in the blanks. "When like-poles of two magnets meet, they <BLANK> each other."');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Attract', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Hold', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Repel', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stuck', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Fill in the blanks. "unlike-poles [BLANK] each other."');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Attract', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Push', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Reject', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Repel', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What object has north and south poles?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Force', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Magnet', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Machine', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Screw', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What happens when the magnets\s opposing poles are brought together?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Attract', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Repel', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stop', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stay', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What happens when magnets'' like poles are brought together?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Attract', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stop', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Repel', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stay', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What is the term for something that makes an object move when it is applied?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Force', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heat', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Motion', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Movement', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Force is either a pull or a what?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Hot', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Lift', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Push', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Transfer', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What do you call the kind of force that magnets do exert?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Electromagnet', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Magnetic field', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Magnetism', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Poles', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What do you call the area of a magnet where magnetic force exists?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Core', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Magnetic field', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'North pole', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'South pole', 0);

INSERT INTO question (category_id, content) VALUES (3, 'How many poles do magnets have?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Two', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Three', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Four', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'One', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Which mechanism is exhibited in the following: "Drying of clothes under the sun."');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conduction', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Convection', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Radiation', 1);

INSERT INTO question (category_id, content) VALUES (3, 'Which mechanism is exhibited in the following: "Melting of cheese in a hot pan"');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conduction', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Convection', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Radiation', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Which mechanism is exhibited in the following: "Drying of fish under sunlight."');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conduction', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Convection', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Radiation', 1);

INSERT INTO question (category_id, content) VALUES (3, 'Which mechanism is exhibited in the following: "Touching a warm water."');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conduction', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Convection', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Radiation', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Does Light travel in a straight line?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Can light pass through a thick wall?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 1);

INSERT INTO question (category_id, content) VALUES (3, 'Does light travel faster in air?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Are the particles in solid materials more compact which enables the sound to travel effectively?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Yes', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Are there imaginary waves produced when an object vibrates in solid?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Yes', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No', 0);

INSERT INTO question (category_id, content) VALUES (3, 'Are sound waves likewise produced when sound is produced?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Yes', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What is the term used for when light bounces back into the direction of its source?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Reflection', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Refraction', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conduction', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Loudness', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What does reflection of light means?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It is the bending of light as it passes through a material', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It is the breaking of light from the sun', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It is the bouncing of light from the source', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It is the passing of light from one material to another', 0);

INSERT INTO question (category_id, content) VALUES (3, 'What is the bending of light called as it travels from one type of material to another?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Reflection', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Refraction', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conduction', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Loudness', 0);

INSERT INTO question (category_id, content) VALUES (3, 'A pencil is placed in a glass of water, how will it look like?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The pencil looked the same', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The pencil looked small', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The pencil seemed to be broken', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The pencil looked bigger', 0);



/* QUARTER 4 EARTH */

INSERT INTO question (category_id, content) VALUES (4, 'Which of these is made up of smallest particles of rocks which contain decayed matter of plants and animals?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Land', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Soil', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Mineral', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of the above', 0);

INSERT INTO question (category_id, content) VALUES (4, 'How many types of soil are there?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'One', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Two', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Three', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Four', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Which among these type is characterized as having the finest particles that holds greater amount of water?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Loam', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Clay', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sand', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Soil', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Which type of soil is best for planting?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Loam', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Clay', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sand', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Soil', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What do you call the scientist that study about soil?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Meteorologist', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Geologist', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Pedologist', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Astronaut', 0);

INSERT INTO question (category_id, content) VALUES (4, 'How do each soil types differ?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Texture', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Both Texture and Color', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None of the above', 0);

INSERT INTO question (category_id, content) VALUES (4, 'How do decayed organisms like plants and animals make the soil fertile?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Change its color', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Enhances odor', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Adds nutrients to the soil', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None of the above', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Which of the soil type is good for making pots?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Clay', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Loam', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Soil', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sand', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Which soil has loose particles?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Clay', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Loam', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sand', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None of the above', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Water comes from different sources whether it be open or closed sources.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

--INSERT INTO question (category_id, content) VALUES (4, 'The kind of water depends on its source.');
--INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
--INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Water is a renewable source because of water cycle?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (4, 'The water part of the earth is called atmosphere?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Water covers a larger area of its surface than land.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Rivers and lakes whose water is not very clean may still be useful?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (4, 'In the human body, water is needed for bodily functions?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Is sea water is used for cleaning, washing, bathing, preparing food and other household uses?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'True', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'False', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Riza waters her flower garden everyday.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Important', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Not important', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Pasig River serves as route for transportation in Metro Manila.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Important', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Not important', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Boracay is the best island-resort in the whole Philippines.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Important', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Not important', 0);

INSERT INTO question (category_id, content) VALUES (4, 'The clean ocean or river is the best habitat for aquatic plants and animals.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Important', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Not important', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What do we call the changing of liquid into gas or vapor?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Liquification', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Evaporation', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Condensation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Precipitation', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What do we call the falling of rain from the clouds?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Evaporation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Precipitation', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sublimation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Condensation', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Which water part of the earth covers three-fourths of its surface?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Water cycle', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Water sphere', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Surface', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Blue planet', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Three-fourths of the earth is covered of water. How many percent is salty?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '1%', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '97%', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '67%', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '3%', 0);

INSERT INTO question (category_id, content) VALUES (4, 'It is a process where the water continuously moves in the surface of the earth.');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Evaporation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Precipitation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Water cycle', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Condensation', 0);

INSERT INTO question (category_id, content) VALUES (4, 'A wind vane tells what component of the weather?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wind direction', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wind speed', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Wind', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What instrument measures the speed of the wind?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Barometer', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Thermometer', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Anemometer', 1);

INSERT INTO question (category_id, content) VALUES (4, 'What is the news about the weather called?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Meteorology', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Weather forecast', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Weather', 0);

INSERT INTO question (category_id, content) VALUES (4, 'When the wind is blowing gently, what kind of weather do we have?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Fine', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Stormy', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Rainy', 0);

INSERT INTO question (category_id, content) VALUES (4, 'During a stormy weather, how does an anemometer spin its cups?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Very slow', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Moderately slow', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Very fast', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Which of these tells there is an approaching storm?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Dark clouds and cold air', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Gentle wind and rain', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Strong winds and heavy rains', 0);

INSERT INTO question (category_id, content) VALUES (4, 'How does the wind move during fair weather?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The wind moves gently', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The wind blows hard', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The wind moves violently', 0);

INSERT INTO question (category_id, content) VALUES (4, 'How does air temperature affect the weather condition?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'High temperature makes the weather warm', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Low temperature makes the weather hot', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Low temperature indicates fair weather', 0);

INSERT INTO question (category_id, content) VALUES (4, 'You are sweeping the dried leaves in the backyard. You have noticed that the wind is blowing hard. Will you burn the dried leaves? Why or why not?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'I will burn the dried leaves so that the backyard will be clean', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'I will not burn the dried leaves because it may cause a big fire', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None of these', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Mang Jose prepared his fishing net. He observed that the sky is overcast. What is the best thing that he should do?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Keep the nets and do not go on fishing', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Hurry and go fishing', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Call other fishermen to go on fishing', 0);

INSERT INTO question (category_id, content) VALUES (4, 'The air temperature drops to 18 degrees. What should you wear?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Thick clothes', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Thin clothes', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'New clothes', 0);

INSERT INTO question (category_id, content) VALUES (4, 'The sky is dark. You hear thunder. Your father requested you to help him harvest the rice. What should you do?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Let him stop harvesting', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Help him to finish the harvest quickly', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Let father do the harvesting alone', 0);

INSERT INTO question (category_id, content) VALUES (4, 'A ship is about to aboard for Manila. A tropical depression is raised in the east of Mindoro. What should the ship captain do?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Go on with the trip to Manila', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Go on with the trip to Manila but will just dock in Mindoro', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Postpone the trip to Manila', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Typhoon signal no.1 is raised over the place where you live. Classes are not suspended. However, the place where you live gets flooded easily when it rains. Would you go to school? Why or why not?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'I will still go to school because my teacher might be angry', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'I will not go to school because I might be caught in the flood', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'I will not go to school but just play in the rain', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What is the main source of heat and light?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Bulb', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Flashlight', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Candle', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sun', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Which of the following statements is true about the sun?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It is made up of very hot gases', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'These gases are so hot and they glow', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The surface is about 5000 degrees celsius', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of the above', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Mother washes clothes every weekend. What is needed to dry her laundry?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Blower', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Brush', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Conditioner', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Heat', 1);

INSERT INTO question (category_id, content) VALUES (4, 'Without the sun, what would most likely happen to earth?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The earth will be dark and cold', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'The earth will be lifeless', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Both dark, cold and lifeless', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'None of the above', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What is the effect of sun''s heat and light to the environment?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It causes the changes in the temperature', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It sustains life of humans, animals and plants', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'It helps the plants in making their food', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of the above', 1);

INSERT INTO question (category_id, content) VALUES (4, 'The sun is shining brightly. The wind is calm and it is warm outside. What do you think is the air temperature?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Normal', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Low', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'High', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Very Low', 0);

INSERT INTO question (category_id, content) VALUES (4, 'At which time of the day can you have the shortest shadow?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '10:00 A.M', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '12:00 noon', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '9:00 A.M', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), '2:00 P.M', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Why do opaque objects form shadows?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Because they absorb the light that hit them', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Because they reflect the light', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Because they bend the light that hit them', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Because they cover the light that hits them', 1);

INSERT INTO question (category_id, content) VALUES (4, 'When does an object cast a longer shadow?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays are slanted', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays are on top', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays are sideways', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays are trapped', 0);

INSERT INTO question (category_id, content) VALUES (4, 'When are shadows formed?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays hit an opaque object', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays hit transparent objects', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays hit translucent objects', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When light rays hit hard objects', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Why do farmers use their wide-brim hats when they are working in the farm?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To protect them from strong winds', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To protect them from head injuries', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To protect them from intense heat and light of the sun', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To protect their heads from insect bites', 0);

INSERT INTO question (category_id, content) VALUES (4, 'In which process do plants release water from their leaves?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Condensation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Evaporation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Precipitation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Transpiration', 1);

INSERT INTO question (category_id, content) VALUES (4, 'When does evaporation takes place?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When water is cooled', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When water is heated', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When water is frozen', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'When water is filtered', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Is water cycle possible when the sun is blocked? Why?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No, because the evaporation process is lacking', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Yes, because the condensation process continues', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Yes, because electricity can heat water', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'No, because precipitation process is delayed', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Why do we need to drink lots of water on very hot days?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To make our skin healthier', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To increase our body temperature', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To replace the water loss from our body', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'To make our digestive system healthy', 0);

INSERT INTO question (category_id, content) VALUES (4, 'What is the role of the sun in the water cycle?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sun`s heat causes evaporation', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sun`s heat creates tidal waves', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sun`s heat produces more water', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Sun`s heat produces more water waves', 0);

INSERT INTO question (category_id, content) VALUES (4, 'Belen will be joining her friends in swimming on Sunday. What must she do to avoid sunburn?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Apply coconut oil', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Apply lemon jelly', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Apply sunblock lotion', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Apply avocado paste', 1);

INSERT INTO question (category_id, content) VALUES (4, 'When you opened the kettle, you have seen droplets of water on its cover. What process in the water cycle is shown?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Condensation', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Evaporation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Precipitation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Transpiration', 0);

INSERT INTO question (category_id, content) VALUES (4, 'In what way is the sun''s heat beneficial to humans?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Farmers can harvest and dry their cops', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Mother can dry her laundry', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Fishermen can dry and preserve their fishes', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'All of the above', 1);

INSERT INTO question (category_id, content) VALUES (4, 'How do animals and humans release or give off water particles?');
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Through transpiration', 1);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Through respiration', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Through condensation', 0);
INSERT INTO answer(question_id, content, is_true) VALUES((SELECT seq FROM sqlite_sequence WHERE name='question' LIMIT 1), 'Through precipitation', 0);















