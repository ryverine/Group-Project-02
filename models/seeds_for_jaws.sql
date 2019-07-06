
CREATE DATABASE store_finder_db;
USE store_finder_db;

INSERT INTO Locations (city, state)
VALUES
('Raleigh','NC'),
('Chapel Hill','NC'),
('Wake Forest','NC'),
('Apex','NC'),
('Durham','NC'),
('Cary','NC'),
('Morrisville','NC');

INSERT INTO Stores (name, description, addrln1, addrln2, city, state, zip, LocationID)
VALUES
("The Hemp Store","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum semper dui ac laoreet molestie. Sed aliquet, sapien non aliquet maximus, leo magna congue sem, sed tincidunt libero tortor non tortor. Phasellus sodales ipsum volutpat rhoncus sodales. Praesent vulputate condimentum felis eu aliquam. In ullamcorper metus et nulla rhoncus accumsan. Curabitur tempus, ligula a tincidunt pulvinar, dolor enim congue justo, in iaculis arcu tellus sed enim. Maecenas tincidunt commodo risus vel pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus vel lectus elementum, gravida magna et, varius nunc.","1000 Old Milburnie Rd","Suite 1","Raleigh","NC","27604",1),
("The Hemp Store","Cras nec consequat risus. Integer ullamcorper eros non vehicula feugiat. Suspendisse in bibendum ipsum. Vestibulum tincidunt risus quis cursus rhoncus. Donec et congue justo, id pellentesque erat. Mauris eu pellentesque ex, eget pulvinar orci. Phasellus id erat lorem. Nunc porttitor faucibus dui vel vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut pulvinar volutpat mi, ac maximus sem eleifend sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vitae tortor suscipit, blandit diam vitae, commodo risus. Pellentesque iaculis tortor ut nulla semper tincidunt. Nulla eleifend luctus est.","115 E Franklin St","","Chapel Hill","NC","27514","2"),
("The Hemp Store","Ut massa tellus, dignissim non laoreet ut, dictum ac nulla. Suspendisse aliquet nisi non eros pellentesque imperdiet. Phasellus orci orci, accumsan in mollis ac, bibendum ac tellus. Suspendisse malesuada facilisis nulla vel mollis. Pellentesque tincidunt ac ex eget ullamcorper. Morbi et velit lacinia, tempor urna a, mattis urna. Maecenas et porta urna. Proin placerat mi id blandit luctus. Fusce dui dui, dictum ut orci vitae, semper suscipit lectus. Etiam ultricies semper mi et blandit.","1002 Durham Rd","Suite 1100","Wake Forest","NC","27587","3"),
("Smoke & Talk","Ut non ultricies tortor. In eleifend justo et mauris fringilla, a feugiat quam iaculis. Aliquam quis lorem a ex condimentum aliquet. Aliquam rutrum accumsan diam, imperdiet condimentum sem vulputate et. Pellentesque vulputate suscipit pretium. Curabitur risus felis, rutrum ac lectus vitae, hendrerit pretium nisl. Maecenas elementum nunc sed laoreet sodales. Quisque sollicitudin bibendum diam at congue. Interdum et malesuada fames ac ante ipsum primis in faucibus.","3675 New Bern Ave","","Raleigh","NC","27610","1"),
("Your CBD Store","Duis finibus tellus et magna tempus feugiat. Donec vehicula finibus augue id varius. Mauris gravida et erat at tincidunt. Cras leo lacus, sagittis et interdum non, condimentum in nisi. Aliquam lacinia fermentum ante. Quisque eleifend, erat et facilisis euismod, massa nisi imperdiet leo, nec aliquam est ipsum vitae justo. Donec varius leo quis gravida tincidunt. Vivamus mollis accumsan nunc, in ullamcorper velit lacinia nec. Integer tempor purus vitae mattis egestas. Aenean vehicula dui vel nunc luctus, egestas venenatis nisi fermentum. Aenean et neque tempus velit congue vulputate id nec risus.","7304 Vanclayborn Rd","","Apex","NC","27523","4"),
("Your CBD Store","Nulla pellentesque vel felis gravida ultricies. Donec a mi in massa tincidunt malesuada. Proin imperdiet lorem ante, vitae dapibus nisi condimentum id. Quisque sagittis sapien vitae fringilla posuere. Nam magna ipsum, ultrices eu viverra interdum, faucibus ac ex. Vestibulum vitae bibendum erat. Donec congue augue at ante rutrum, id sollicitudin massa volutpat. Aenean luctus vehicula magna, eu iaculis nisl placerat a. Aenean interdum est ac justo pulvinar tempor. Pellentesque elit leo, molestie quis urna in, volutpat congue neque. Morbi mauris nulla, aliquet a iaculis non, faucibus ac dui. Etiam eget tempor diam. Fusce id erat nec neque porttitor rhoncus at nec ipsum. Nullam rhoncus magna urna, sit amet commodo sapien lobortis eu. Praesent fermentum augue non augue tempus, quis pulvinar tellus mattis. Curabitur blandit sapien pretium elit porta faucibus.","706 N Main St","","Wake Forest","NC","27587","3"),
("Misty Mountain Vapors - Vape & CBD","Nulla eu cursus justo. Proin quis tellus et felis luctus dictum ut id nisi. Quisque blandit nunc eu posuere maximus. Proin ac urna eget est maximus consectetur a fermentum turpis. Aenean eu ornare leo. Nulla nec nisl nec eros efficitur lobortis. Pellentesque dictum justo vulputate turpis rhoncus, ut interdum nunc ullamcorper. In bibendum turpis vel elit sodales, interdum mattis diam sagittis. Cras nisl orci, faucibus non facilisis sit amet, blandit ut nulla. Cras ut dolor quis erat pellentesque consectetur nec nec enim. Proin non accumsan diam. Nam semper elit non gravida congue. Praesent nec sapien vitae eros pellentesque condimentum id fringilla lectus.","5710 Capital Blvd","","Raleigh","NC","27616","1"),
("HempKo","Nulla fringilla, tortor ac luctus ultrices, velit arcu laoreet leo, et cursus lacus lectus sit amet sem. Nunc viverra lacus at ipsum accumsan tincidunt. Duis ut dolor pretium massa molestie malesuada nec nec est. Maecenas nibh dui, interdum a tempus id, gravida at ligula. Aenean varius sollicitudin laoreet. Nullam vestibulum cursus massa eget rutrum. Cras iaculis accumsan pellentesque. Quisque nec purus eget libero sollicitudin dignissim in et sapien. Nunc facilisis metus vitae ornare sodales. Duis ultrices ante commodo dignissim malesuada. Pellentesque imperdiet nulla nec nisi accumsan, et scelerisque purus tristique.","522 E Williams St","","Apex","NC","27502","4"),
("The Hemptender Dispensary","Etiam iaculis feugiat elit, sit amet imperdiet purus dignissim eget. Donec viverra eu sapien vitae sodales. Quisque iaculis enim quis tellus tincidunt tincidunt. Phasellus sed pharetra nibh, ut convallis nisl. Sed vitae dignissim nisl. Suspendisse efficitur tempor felis, vitae sodales ligula tincidunt vel. Mauris egestas, nisi vel gravida ornare, orci quam varius est, ac rhoncus ante magna at metus. Ut turpis neque, sodales a sem vitae, sagittis dapibus felis. Praesent in condimentum erat. Phasellus commodo sagittis mauris vitae bibendum. Pellentesque eu finibus mauris. Curabitur sed tincidunt arcu.","1920 NC-54","Suite 50","Durham","NC","27713","5"),
("The Hemp Boutique of Cary","Vestibulum ac leo lacus. Phasellus ornare, ipsum sed rhoncus vulputate, neque tortor mattis ante, non pharetra dolor turpis vitae leo. Praesent eu mauris ut leo luctus elementum. Etiam justo ex, vehicula quis orci eget, euismod iaculis est. Vestibulum felis magna, eleifend vitae pellentesque non, sodales at lectus. Suspendisse ac felis sed metus imperdiet egestas. Sed tempor dui in suscipit ultricies. Suspendisse quis sapien non tortor tempor eleifend. Vestibulum a ex elit. Aliquam velit velit, tempus vitae nibh sodales, condimentum auctor eros. Ut eget enim non nisl semper volutpat eget ac velit. In et diam molestie nunc pellentesque mollis sit amet eget orci. Sed ac eros ante. Etiam vel elit iaculis, ornare mi vitae, laoreet elit. Proin maximus rutrum tortor. Etiam eu dolor convallis, vestibulum felis et, ullamcorper augue.","247 W Chatham St","","Cary","NC","27511","6"),
("The Hemp Farmacy","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum semper dui ac laoreet molestie. Sed aliquet, sapien non aliquet maximus, leo magna congue sem, sed tincidunt libero tortor non tortor. Phasellus sodales ipsum volutpat rhoncus sodales. Praesent vulputate condimentum felis eu aliquam. In ullamcorper metus et nulla rhoncus accumsan. Curabitur tempus, ligula a tincidunt pulvinar, dolor enim congue justo, in iaculis arcu tellus sed enim. Maecenas tincidunt commodo risus vel pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus vel lectus elementum, gravida magna et, varius nunc.","8604 Falls of Nuese Rd","Suite 104","Raleigh","NC","27615","1"),
("Hemp Times Inc","Cras nec consequat risus. Integer ullamcorper eros non vehicula feugiat. Suspendisse in bibendum ipsum. Vestibulum tincidunt risus quis cursus rhoncus. Donec et congue justo, id pellentesque erat. Mauris eu pellentesque ex, eget pulvinar orci. Phasellus id erat lorem. Nunc porttitor faucibus dui vel vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut pulvinar volutpat mi, ac maximus sem eleifend sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vitae tortor suscipit, blandit diam vitae, commodo risus. Pellentesque iaculis tortor ut nulla semper tincidunt. Nulla eleifend luctus est.","510 St. Mary's St","Suite 5","Raleigh","NC","27605","1"),
("Nature's Releaf Hemp Store","Ut massa tellus, dignissim non laoreet ut, dictum ac nulla. Suspendisse aliquet nisi non eros pellentesque imperdiet. Phasellus orci orci, accumsan in mollis ac, bibendum ac tellus. Suspendisse malesuada facilisis nulla vel mollis. Pellentesque tincidunt ac ex eget ullamcorper. Morbi et velit lacinia, tempor urna a, mattis urna. Maecenas et porta urna. Proin placerat mi id blandit luctus. Fusce dui dui, dictum ut orci vitae, semper suscipit lectus. Etiam ultricies semper mi et blandit.","5224 Hollyridge Dr","","Raleigh","NC","27612","1"),
("Good Guy Vapes","Ut non ultricies tortor. In eleifend justo et mauris fringilla, a feugiat quam iaculis. Aliquam quis lorem a ex condimentum aliquet. Aliquam rutrum accumsan diam, imperdiet condimentum sem vulputate et. Pellentesque vulputate suscipit pretium. Curabitur risus felis, rutrum ac lectus vitae, hendrerit pretium nisl. Maecenas elementum nunc sed laoreet sodales. Quisque sollicitudin bibendum diam at congue. Interdum et malesuada fames ac ante ipsum primis in faucibus.","10970 Chapel Hill Rd","","Morrisville","NC","27560","7"),
("DailyVita","Duis finibus tellus et magna tempus feugiat. Donec vehicula finibus augue id varius. Mauris gravida et erat at tincidunt. Cras leo lacus, sagittis et interdum non, condimentum in nisi. Aliquam lacinia fermentum ante. Quisque eleifend, erat et facilisis euismod, massa nisi imperdiet leo, nec aliquam est ipsum vitae justo. Donec varius leo quis gravida tincidunt. Vivamus mollis accumsan nunc, in ullamcorper velit lacinia nec. Integer tempor purus vitae mattis egestas. Aenean vehicula dui vel nunc luctus, egestas venenatis nisi fermentum. Aenean et neque tempus velit congue vulputate id nec risus.","5408 Apex Peakway","","Apex","NC","27502","4");
    
INSERT INTO Products (name, description, brand, quantity, price, StoreID)
VALUES
("Hempzilla CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","Hempzilla","0","0","14"),
("Dinner Lady CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Dinner Lady","0","0","14"),
("Ancient Nutrition CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Ancient Nutrition","0","0","15"),
("Fountain of Health CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","Fountain of Youth","0","0","15"),
("SunMed CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","SunMed","0","0","5"),
("SunMed CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","SunMed","0","0","6"),
("Koi CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Koi","0","0","1"),
("Gold Standard CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Gold Standard","0","0","1"),
("Koi CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","Koi","0","0","2"),
("Gold Standard CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","Gold Standard","0","0","2"),
("Koi CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","Koi","0","0","3"),
("Gold Standard CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Gold Standard","0","0","3"),
("Koi CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Koi","0","0","4"),
("EcoCaps","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","CBD Drip","0","0","7"),
("CBD drip","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","CBD Drip","0","0","7"),
("Naternal CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","Naternal","0","0","8"),
("Sun State Hemp CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Sun State Hemp","0","0","8"),
("Lumi CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Lumi","0","0","8"),
("Halcyon Leaf CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","Halcyon Leaf","0","0","9"),
("Carolina's Hope CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","Carolina's Hope","0","0","11"),
("Clean Remedies CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","Clean Remedies","0","0","11"),
("Legacy Farms CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Legacy Farms","0","0","11"),
("Queen City CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Queen City Hemp","0","0","11"),
("Hemp Lucid CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","Hemp Lucid","0","0","11"),
("Simpli Botanicals CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","Simpli Botanicals","0","0","11"),
("The Elixir CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","OROrganics","0","0","11"),
("Sana Botanicals CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Sana Botanicals","0","0","11"),
("MEDterra CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","MEDterra","0","0","11"),
("Lazarus Naturals CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","Lazarus Naturals","0","0","12"),
("Charlotte's Web CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","Charlotte's Web","0","0","12"),
("CBDistillary CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","CBDistillary","0","0","12"),
("Bluebird CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","Bluebird","0","0","12"),
("Cannibidoil Life CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Cannabidoil Life","0","0","12"),
("Charlotte's Web CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","Charlotte's Web","0","0","13"),
("Carolina Hemp Co CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","Carolina Hemp Co","0","0","13"),
("Restorative Botanicals CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","Restorative Botanicals","0","0","13"),
("CBDistillary CBD","Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons. Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend. Pass the duchie Bob Marley this shatter is hella potent. Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?","CBDistillary","0","0","13"),
("Kingdom Harvest CBD","Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome. French inhale topical CBD lotion and binge watch Cheech and Chong. Extremely dope chronic eye drops in the basement with psychedellic nugs. Toke up on the Pineapple Express with that sticky icky shotgun sensamillia. Just give us the whizzaa!","Kingdom Harvest CBD","0","0","13"),
("The Brothers Apothecary CBD","Make a quick pipe out of an apple and release the carb Purple Haze all around. Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow. Dude you’re just being paranoid, don’t call the cops. OG grandaddy purps with notes of diesel.","The Brothers Apothecary","0","0","13"),
("Gron Chocolates & Tinctures CBD","Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs. The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch. Broccoli bong butterfly gateway drugs to elevate your good vibrations. Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side. Optimizing dime bags of pre-rolled honey oil dabs.","Gron Chocolates & Tinctures","0","0","13"),
("Lazarus Naturals CBD","Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart. Wake and bake indica hash at the dispensary in Oregon decriminalized. Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece. California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness. Guatemalan purple haze grown outdoors by ganja shaman.","Lazarus Naturals","0","0","13");

INSERT INTO Users (first_name,last_name,email,password)
VALUES
("Matthew", "Allen", "matt@dankcity.com", "Welcome001"),
("Isabella","Merendino","isabella@dankcity.com", "Welcome002"),
("Jared","Test","jared@dankcity.com", "Welcome003"),
("Ryan","Cheek","ryan@dankcity.com", "Welcome004");
    
INSERT INTO Store_Comments (comment, createdAt, updatedAt, StoreID, UserID) 
VALUES
("Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart.",now(),now(),"1","1"),
("Wake and bake indica hash at the dispensary in Oregon decriminalized.",now(),now(),"2","2"),
("Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece.",now(),now(),"3","3"),
("California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness.",now(),now(),"4","4"),
("Guatemalan purple haze grown outdoors by ganja shaman.",now(),now(),"5","3"),
("Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons.",now(),now(),"6","2"),
("Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend.",now(),now(),"7","1"),
("Pass the duchie Bob Marley this shatter is hella potent.",now(),now(),"8","2"),
("Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?",now(),now(),"9","3"),
("Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome.",now(),now(),"10","4"),
("French inhale topical CBD lotion and binge watch Cheech and Chong.",now(),now(),"11","3"),
("Extremely dope chronic eye drops in the basement with psychedellic nugs.",now(),now(),"12","2"),
("Toke up on the Pineapple Express with that sticky icky shotgun sensamillia.",now(),now(),"13","1"),
("Just give us the whizzaa!",now(),now(),"14","2"),
("Make a quick pipe out of an apple and release the carb Purple Haze all around.",now(),now(),"15","3"),
("Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow.",now(),now(),"1","4"),
("Dude you’re just being paranoid, don’t call the cops.",now(),now(),"2","3"),
("OG grandaddy purps with notes of diesel.",now(),now(),"3","4"),
("Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs.",now(),now(),"4","1"),
("The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch.",now(),now(),"5","2"),
("Broccoli bong butterfly gateway drugs to elevate your good vibrations.",now(),now(),"6","3"),
("Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side.",now(),now(),"7","4"),
("Optimizing dime bags of pre-rolled honey oil dabs.",now(),now(),"8","1"),
("Hot box at 4:20 the fatty dank endo doobie in a cashed roachclip, Bogart.",now(),now(),"9","2"),
("Wake and bake indica hash at the dispensary in Oregon decriminalized.",now(),now(),"10","3"),
("Crystalized buds from trimming tasty weed pens THC sativa euphoric resinated dome piece.",now(),now(),"11","4"),
("California kush roll it up into a fat blunt for medicinal purposes to elevate your consciousness.",now(),now(),"12","3"),
("Guatemalan purple haze grown outdoors by ganja shaman.",now(),now(),"13","2"),
("Legalize spliffs for recreational Snoop Dogg edibles pusher cannabidiol cartoons.",now(),now(),"14","1"),
("Littering and butter stuff more cerebral high couch lock Abba Zabba you my only friend.",now(),now(),"15","2"),
("Pass the duchie Bob Marley this shatter is hella potent.",now(),now(),"1","3"),
("Rolling down the street smoking endo, laid back. Have you ever tried Lorem Ipsum on Weeeeeeeeeeed?",now(),now(),"2","4"),
("Indica is like ‘in da couch’ like straight couch lock chasing waterfalls and milkers straight to your dome.",now(),now(),"3","3"),
("French inhale topical CBD lotion and binge watch Cheech and Chong.",now(),now(),"4","2"),
("Extremely dope chronic eye drops in the basement with psychedellic nugs.",now(),now(),"5","1"),
("Toke up on the Pineapple Express with that sticky icky shotgun sensamillia.",now(),now(),"6","2"),
("Just give us the whizzaa!",now(),now(),"7","2"),
("Make a quick pipe out of an apple and release the carb Purple Haze all around.",now(),now(),"8","3"),
("Rasta! Fully man, keif gummies are the indoor equivalent of body high super mellow.",now(),now(),"9","4"),
("Dude you’re just being paranoid, don’t call the cops.",now(),now(),"10","3"),
("OG grandaddy purps with notes of diesel.",now(),now(),"11","2"),
("Hydroponic nacho pop-tarts tetrahydrocannabinol hybrid schwag stems and seeds little orange hairs.",now(),now(),"12","1"),
("The cannabis industry will gravity bong a cotton mouth pizza dipped in ranch.",now(),now(),"13","2"),
("Broccoli bong butterfly gateway drugs to elevate your good vibrations.",now(),now(),"14","3"),
("Taco Bell 4th meal with Doritos Locos tacos and a knife rip on the side.",now(),now(),"15","4");

    
    
    
    
    
    






























