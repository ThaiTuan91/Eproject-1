-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2022 at 09:03 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_SEM_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` longtext COLLATE utf8mb4_unicode_ci,
  `id_rule_user` bigint(20) UNSIGNED NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `fullname`, `email`, `phone`, `address`, `gender`, `dob`, `token`, `confirmed`, `confirmation_code`, `id_rule_user`, `password`, `image`, `created_at`, `updated_at`) VALUES
(35, 'Đặng Tuấn', 'tuananhdangktqd@gmail.com', '0965367815', 'HN', 'male', '2022-04-27', '62aae05bdfa6660ac7eba36d97250c4b', 1, 'HM8mL7ZXl3KE0psEbhT6hF8Sux0pkXP2', 1, '$2y$10$FDig8HcBZDGwoSp1LluL4.6XQgmYU95.Xquq/zD.GIvlshFaZ1RwO', 'filter onchange ajax.png', '2022-05-27 20:47:02', '2022-05-28 08:15:43'),
(37, 'Đặng Tuấn', 'tuangalway@gmail.com', '0965367815', 'HN', 'male', '2022-05-20', NULL, 1, NULL, 2, '$2y$10$0ExNLVWATc2Ch/Zh20kqL.z0QOLFo7hfq6sgXThPWby2ql9xqRB06', 'filter onchange ajax.png', '2022-05-28 01:47:17', '2022-05-28 01:47:17'),
(38, 'Hoàng', 'hoang28112312@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '7onxlQaU0qByJzRHCQXKfPvas2vFYas3', 1, '$2y$10$vNqa5weB/fy4jSh3XW7qk.Rbi4xQqITIN0wVEpkcqWwZqsIIb00qm', NULL, '2022-05-28 02:01:30', '2022-05-28 02:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `normal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scientific_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_category` bigint(20) UNSIGNED DEFAULT NULL,
  `habitat` longtext COLLATE utf8mb4_unicode_ci,
  `overview` longtext COLLATE utf8mb4_unicode_ci,
  `shortThumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrefParam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diet` longtext COLLATE utf8mb4_unicode_ci,
  `size` longtext COLLATE utf8mb4_unicode_ci,
  `longThumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `population_status` longtext COLLATE utf8mb4_unicode_ci,
  `id_range` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `created_at`, `updated_at`, `normal_name`, `scientific_name`, `id_category`, `habitat`, `overview`, `shortThumbnail`, `hrefParam`, `diet`, `size`, `longThumbnail`, `population_status`, `id_range`) VALUES
(1, '2022-05-05 07:20:20', '2022-05-28 00:38:52', 'American Bullfrog', 'Lithobates catesbeiana', 11, 'This highly aquatic frog prefers still, shallow waters, like those found at the edges of lakes and ponds or sluggish portions of streams and rivers. The bullfrog’s natural range extends from Nova Scotia to central Florida, from the Atlantic coast to Wisconsin, and across the Great Plains to the Rockies.', 'Bullfrogs are brown to green in color, often with dark brown spots. Their bellies range from white to yellow and are sometimes marked with black spots or patterns. Their hind feet are fully webbed.\r\n\r\nMale bullfrogs emit a deep bellow that sounds like “jug-a-rum.” Extremely territorial, they will aggressively defend their land, even wrestling with rivals.\r\n\r\nFemales lay thousands of eggs (as many as 20,000) during the summer breeding season. In the southern part of a bullfrog’s range, metamorphosis can take as few as 79 day; in the colder, northern part of their range, it can take two to three years.', 'American-bullfrog-S.jpeg', 'american-bullfrog', 'Bullfrogs are ambush predators and will eat almost any animal they can capture and swallow, including worms, insects, crayfish, fishes, other frogs, snakes, small turtles, small mammals and even birds.', 'They are the largest North American frog, weighing up to 1 pound and measuring up to 8 inches.', 'American-bullfrog-L.jpeg', 'Bullfrogs are abundant in their native habitat, playing a role in insect control and energy transfer in the ecosystem. In places like California and Arizona, where bullfrogs aren’t naturally occurring but have been introduced by humans, bullfrog populations are skyrocketing. Native populations of western frog species are in decline due to competition for resources and predation. As a result, some of those native frog species are being driven toward extinction.', 5),
(2, '2022-05-05 07:23:45', '2022-05-05 07:23:45', 'Blue Poison Dart Frog', 'Dendrobates tinctorius', 11, 'These frogs are found in a few isolated “rain forest islands” in the Sipaliwini savanna of southern Suriname. This area was probably covered by rain forest habitat in the distant past—until the last ice age. The rain forests have since given way to dry grassland in all but a few areas where surface groundwater was sufficient to sustain the original vegetation. The blue poison dart frog lives in a few isolated patches of relic rain forest habitat.', '\"These little frogs are easily recognized by their blue color, which is generally darker on the limbs and belly and overlaid with black spots or patches, especially on the head and back.\r\n\r\nAs their name implies, poison dart frogs can release toxins from the skin that are distasteful and potentially lethal to would-be predators.\r\n\r\nBlue poison dart frogs are active during the day and can be found hiding among boulders and debris near streams and among leaf litter on the forest floor; however, they lack toe webbing and are poor swimmers, so they are not found in the water.\r\n\r\nThe blue poison dart frog lays small clutches of five to six eggs. After the eggs hatch, the parents transfer tadpoles to individual pools of water, where they finish development. At the Aquarium, we replicate this by raising tadpoles in small individual containers of water.\"', 'Blue-Poison-Dart-Frog-S.jpeg', 'blue-poison-dart-frog', 'A constant forager, this frog is always searching for mites, termites, tiny beetles and any other small insect it may find among leaf litter.', 'An adult frog has a body about 2 inches long and weighs about 0.3 ounce.', 'Blue-Poison-Dart-Frog-L.jpeg', 'An adult frog has a body about 2 inches long and weighs about 0.3 ounce.', 6),
(3, '2022-05-05 07:26:28', '2022-05-05 07:26:28', 'Giant Waxy Tree Frog', 'Phyllomedusa bicolor', 11, 'Giant waxy tree frogs occupy a large range within the Amazon rain forest.', 'These frogs inhabit drier parts of treetops, where they prevent themselves from drying out by wiping wax, produced by special skin glands, over their bodies. Because of this, they are sometimes called waxy frogs. Eggs are laid on large leaves overhanging the water. As the eggs hatch, the tadpoles fall into the water to begin development.', 'Giant-Waxy-Tree-Frog-S.jpeg', 'giant-waxy-tree-frog', 'The giant waxy tree frog eats insects and other small live prey.', 'These frogs grow to be 4 to 5 inches.', 'Giant-Waxy-Tree-Frog-L.jpeg', 'This species is not threatened.', 6),
(4, '2022-05-05 19:53:52', '2022-05-05 19:53:52', 'Atlantic Puffin', 'Fratercula arctica', 11, 'All puffins live in the northern hemisphere. (Penguins, which are often confused with puffins, live mostly south of the equator.) Atlantic puffins inhabit a geographic range from the coast of New England to Iceland and the British Isles. They spend most of their lives at sea but return to land to breed, with about 60% of the world\'s population nesting in Iceland.', 'Atlantic puffins have a distinctive large, triangular red-orange bill with a blue-gray base and yellow ridge. Their head, neck, back and wings are black, while their cheeks are pale gray and white. Puffins have bright orange legs and webbed feet.\r\nPuffins live most of their lives at sea (except during breeding season) and are adept at both swimming and flying. They can dive for up to a minute but are usually underwater for 20 to 30 seconds at a time, reaching depths of up to 300 feet. Puffins use their wings to push through the water and can swim as fast as 10 miles per hour. They can also fly about 50 miles per hour, thanks to wicked-fast wings that can beat up to 400 times a minute.', 'Atlantic-Puffin-S.jpeg', 'atlantic-puffin', 'Atlantic puffins have a distinctive large, triangular red-orange bill with a blue-gray base and yellow ridge. Their head, neck, back and wings are black, while their cheeks are pale gray and white. Puffins have bright orange legs and webbed feet. Puffins live most of their lives at sea (except during breeding season) and are adept at both swimming and flying. They can dive for up to a minute but are usually underwater for 20 to 30 seconds at a time, reaching depths of up to 300 feet. Puffins use their wings to push through the water and can swim as fast as 10 miles per hour. They can also fly about 50 miles per hour, thanks to wicked-fast wings that can beat up to 400 times a minute.', 'Atlantic puffins are typically about 12 inches tall.', 'Atlantic-Puffin-L.jpeg', 'Atlantic puffin populations have declined dramatically in many areas of its range, due in part to human activities. The Atlantic puffin is currently listed as vulnerable on the International Union for Conservation of Nature (IUCN) Red List of Threatened Species.', 10),
(5, '2022-05-05 20:05:41', '2022-05-05 20:05:41', 'Blue-Crowned Motmot', 'Momotus momota', 11, 'They inhabit a wide geographic range that includes Bolivia, Paraguay, Argentina, Brazil, Colombia, Ecuador, Peru, Mexico and Trinidad and Tobago.', 'This bird has green, olive and blue feathers on its back and tail. It has a wide black band through the eye, accented by the metallic blue feathers that give the blue-crowned motmot its name.\nIts beak is short, slightly down-curved and serrated along the edges of the upper mandible. The bird is easily recognized by its long, racquet-shaped central tail feathers. Sometimes the blue-crowned motmot can be seen perched on a branch, swinging these tail feathers back and forth like a pendulum. Motmots are most vocal at dawn, calling with a soft and monotonous “whoot whoot, whoot whoot.”', 'Blue-Crowned-Motmot-S.jpeg', 'blue-crowned-motmot', 'Prey includes small lizards and rodents, frogs, birds, arthropods, centipedes, spiders, butterflies, cicadas, beetles, mantises and small pieces of fruit. Motmots sit quietly in trees, waiting for prey.', 'Blue-crowned motmots have a body length ranging from 17 to 20 inches, including their tail.', 'Blue-Crowned-Motmot-L.jpeg', 'Blue-crowned motmots are common throughout their range. They are not listed as threatened or endangered.', 6),
(6, '2022-05-05 20:09:25', '2022-05-05 20:09:25', 'Hyacinth Macaw', 'Anodorhynchus hyacinthinus', 11, 'Hyacinth macaws can be found in parts of Brazil, eastern Bolivia and northeastern Paraguay. Unlike most parrots that prefer tropical rain forest habitats, hyacinth macaws prefer lightly forested areas such as palm swamps and flooded grasslands. A major part of the population lives in the Pantanal region of Brazil.', 'Hyacinth macaws are one of the largest species of parrot. They are beautiful, smart, and can even mimic human speech. They have a blue body of feathers, a solid black beak, and yellow circling their eyes and the lower part of their beak.\r\nThey nest in pre-existing holes in trees with a clutch of two to three eggs. Chicks stay with the mother until they are six months old. Macaws have four toes—two toes face forward and two face backward. These feet are called zygodactyl, and are great for perching on branches, climbing in trees, and even holding food.\r\nParrots use vocalizations to keep in constant contact with one another in their habitat, even if they are on opposite sides of the forest. They have a very loud call, called a contact call, they use for this. It\'s their way of saying, \"\"Hey, I\'m in a tree over here! Where are you?\"\"\r\nThese birds are often kept as pets. Parrots can be challenging to live with, because they haven\'t been domesticated for thousands of years the way dogs and cats have. They are still wild animals and have adaptations that allow them to live in the wild.\r\nThe star of National Aquarium Animal Programs is a hyacinth macaw named Margaret.', 'Hyacinth-Macaw-S.jpeg', 'hyacinth-macaw', 'Macaws primarily eat nuts from native palms, such as acuri and bocaiuva palms, but they also eat fruits and vegetables. Their beaks are strong enough to crack open coconuts.', 'The typical length of a hyacinth macaw is about 40 inches, which is a little longer than a yardstick, and they can have a wingspan of 5 feet. Despite their size, they usually weigh only about 42 ounces—about as much as a large guinea pig!', 'Hyacinth-Macaw-L.jpeg', 'The hyacinth macaw is considered vulnerable to extinction due to habitat loss and over-collection for the pet trade.', 6),
(7, '2022-05-05 20:15:02', '2022-05-05 20:15:02', 'Laughing Kookaburra', 'Dacelo novaeguineae', 11, 'The kookaburra is found throughout eastern Australia, and has been introduced into the southwest corner of Western Australia, Tasmania, Flinders Island and Kangaroo Island. It was introduced into New Zealand between 1866 and 1880.', 'The laughing kookaburra is Australia\'s national symbol. The kookaburra is a brown-colored bird, about the size of a crow. The male is easily distinguished from the female by the blue hues on his wing feathers and darker blue on his tail feathers. The female has a small bit of blue on her wing feathers, but no blue on her tail feathers.\r\nThe call of the kookaburra is commonly used in movies to imitate the sound of monkeys in a jungle.\r\nKookaburras live at home for the first four years of their life. During this time they take care of and provide food for any younger nestlings.', 'Laughing-Kookaburra-S.jpeg', 'laughing-kookaburra', 'Kookaburras are carnivorous. They will eat insects, frogs, reptiles, birds and rodents.', 'The laughing kookaburra is approximately 18 inches in length, with a large head and a very large bill.', 'Laughing-Kookaburra-L.jpeg', 'Global population trends have not been quantified, but populations appear to be stable, and the species is not believed to be in decline.', 9),
(8, '2022-05-05 20:17:43', '2022-05-05 20:17:43', 'Scarlet Ibis', 'Scarlet Ibis', 11, 'The ibis\'s range extends from northern South America southward along the coast of Brazil in aquatic habitats like mangrove swamps, tidal mudflats, wetlands and shallow lakes. Scarlet ibis are occasional visitors to Florida.', 'The scarlet ibis is hard to miss! Adults are bright red with a dark beak and some black-tipped feathers. The long legs of this wading bird are pink, and their toes are partially webbed. They use their long, curved bill to probe mudflats, shallow water and grasses in search of food. These highly social birds form large breeding colonies—often in mangrove swamps—and fly in a V-formation to their feeding grounds.', 'Scarlet-Ibis-S.jpeg', 'scarlet-ibis', 'Ibis eat a varied diet, including crabs and other crustaceans, small fish, mollusks, frogs, worms and insects. At the Aquarium, the ibis\'s diet includes fish, crustaceans and insects, as well as a commercial pellet diet.', 'Adult scarlet ibis reach 22 to 30 inches in length from the tip of the bill to the end of the tail. The male is larger than the female and also has a longer, thicker bill.', 'Scarlet-Ibis-L.jpeg', 'The scarlet ibis is listed in Appendix II (threatened in some parts of its range) of the Convention on International Trade in Endangered Species (CITES). It is highly protected in the Caribbean nation of Trinidad and Tobago, where it is the national bird.', 6),
(9, '2022-05-05 20:19:20', '2022-05-05 20:19:20', 'Sunbittern', 'Eurypyga helias', 11, 'Sunbitterns are found in Central America and northern South America from Guatemala to northern Brazil, and are usually seen on the ground near forest pools and streams.', 'This slim, solitary bird has a blackish, slate-colored head with two white stripes on either side of the face. Its body is mottled, brown with black, and it has some white marks. A long, pointed black and orange bill and red eyes are distinctive.', 'Sunbittern-S.jpeg', 'sunbittern', 'The sunbittern\'s diet consists of large insects, small fish, frogs and crayfish.', 'Sunbitterns average about 18–20 inches in length.', 'Sunbittern-L.jpeg', 'Sunbitterns are not threatened.', 5),
(10, '2022-05-05 20:22:10', '2022-05-05 20:22:10', 'Swainson\'s Lorikeet', 'Trichoglossus haematodus', 11, 'rainforest, coastal bush and woodland areas.', 'The rainbow lorikeet (Trichoglossus moluccanus) is a species of parrot found in Australia. It is common along the eastern seaboard, from northern Queensland to South Australia. Its habitat is rainforest, coastal bush and woodland areas. Six taxa traditionally listed as subspecies of the rainbow lorikeet are now treated as separate species', 'Swainson-Lorikeet-S.jpeg', 'swainsons-lorikeet', 'Rainbow lorikeets feed mainly on fruit, pollen and nectar, and possess a tongue adapted especially for their particular diet.', 'The rainbow lorikeet is a medium-sized parrot, with the length ranging from 25 to 30 cm (9.8 to 11.8 in) including the tail, and the weight varies from 75 to 157 g (2.6–5.5 oz).', 'Swainson-Lorikeet-L.jpeg', 'The rainbow lorikeet is a medium-sized parrot, with the length ranging from 25 to 30 cm (9.8 to 11.8 in) including the tail, and the weight varies from 75 to 157 g (2.6–5.5 oz).', 9),
(11, '2022-05-05 20:25:22', '2022-05-05 20:25:22', 'Yellow-Headed Amazon', 'Amazona oratrix', 11, 'This species lives in riparian forest and areas with scattered trees, as well as evergreen forest in Belize and mangroves in Guatemala. A notable ecoregion of occurrence is the Belizean pine forests.[18] It occurs singly or in pairs, in small groups, and occasionally in big flocks.', 'This medium-sized parrot with the lengthy name is one of the most popular pet species of the Amazon parrot group, thanks to its striking color and its unsurpassed mimicry ability. The double yellow-headed Amazon parrot can even learn to mimic opera singing, which may be why it has been a popular pet for centuries.', 'Yellow-Headed-Amazon-S.jpeg', 'yellow-headed-amazon', 'Amazon parrots eat a variety of seeds, nuts, fruits, berries, and vegetation in the wild. In captivity, a double yellow-headed needs a high-quality pelleted diet supplemented with seed mix and daily servings of fresh bird-safe fruits and vegetables.', 'averages 38–43 centimetres (15–17 in) long', 'Yellow-Headed-Amazon-L.webp', 'considered endangered by the IUCN', 5),
(12, '2022-05-05 20:34:38', '2022-05-05 20:34:38', 'Tufted Puffin', 'Fratercula cirrhata', 11, 'A pelagic seabird. Spends much of the year off shore; returns to the coast to nest and raise chicks. During breeding season, found along sea coasts, rocky cliffs and offshore islands. During non-breeding season, ranges over adjacent waters usually only to the edge of the continental shelf.', 'In summer, or breeding plumage, the tufted puffin has striking yellow plumes that start above the eye and run down the back of the head. Puffins, like guillemots and murres, belong to a group of seabirds known as auks, or alcids. Puffins and other alcids are well adapted for life on the ocean. They have short, strong wings and legs set far back on the body, making them excellent swimmers and divers.', 'Tuffed-Puffin-S.jpeg', 'tufted-puffin', 'Diet consists primarily of anchovies and other small fish, as well as squid, octopus, crabs, zooplankton and jellies. Chick diet is almost entirely fish, while adult diet is more varied.', 'Medium to large member of the auk, or alcid, family. The largest of the puffins, about the size of a crow. Size varies some based on location. Western Pacific birds tend to be slightly larger than eastern birds. Common length of 15 inches (38 cm). Common wingspan of 15 inches (38 cm).', 'Tuffed-Puffin-L.jpeg', '\"Least Concern\" on the IUCN Red List. Abundant in Alaska, where federal and state laws protect seabird colonies. Colonies along the coasts of California, Oregon and Washington have been declining since the beginning of the century due to decreasing numbers of fish, ocean pollution and oil spills.', 14),
(13, '2022-05-12 20:11:28', '2022-05-12 20:11:28', 'Pigeon Guillemot', 'Cepphus columba', 12, 'Pigeon guillemot occurs in the North Pacific from Russia’s Kuril Islands to Eastern Siberia and from western Alaska to Southern California. Found along rocky coastlines and inshore waters.', 'The pigeon guillemot is a small seabird native to the northern Pacific Ocean. Guillemots, like puffins and murres, belong to a group of seabirds known as auks, or alcids. Guillemots and other alcids are well adapted for life on the ocean. They have short, strong wings and legs set far back on the body, making them excellent swimmers and divers.', 'Pigeon-Guillemot-S.jpeg', 'pigeon-guillemot', 'Diet consists of small fish and invertebrates. Hunts by diving and searching sea floor for food. Uses wings to swim and feet to steer. Also uses feet for propulsion, unlike most auks. Can dive as deep as 150 feet (45.7 m); typically dives between 33 and 66 feet deep (10-20 m).', 'Common length of 11.8-13.8 inches (30-35 cm). Common wingspan of 21.7-23.2 inches (55-59 cm). Common weight of 15.9-19.4 oz. (450-550 g).', 'Pigeon-Guillemot-L.jpeg', 'Least Concern” on the IUCN Red List.', 14),
(14, '2022-05-12 20:15:54', '2022-05-12 20:15:54', 'African Penguin', 'Spheniscus demersus', 12, 'Breeds on 24 islands offshore between Namibia and Port Elizabeth, South Africa. On the mainland, there are colonies of African penguins in South Africa’s Betty’s Bay and Simonstown, as well as in Namibia.', 'This small, distinctive penguin is found on the rocky coasts of Southwestern Africa, in the countries of Namibia and South Africa. They feed exclusively on marine species, mainly fish and squid. Hunting involves venturing from shore, sometimes as far as nine miles off the coast, and swallowing food whole. After hatching, an African penguin chick will be fed by its parents for as long as three months.', 'African-Penguin-S.jpeg', 'african-penguin', 'Diet consists of marine species. Includes twenty-five species of fish (which make up 42 percent of its diet), eighteen species of crustaceans, three species of squid, and one species of polychaete (worms).', 'The adult African penguin stands 18 to 25 inches (46 – 64 cm) tall and weighs 6 to 7 lbs. (2.7 – 3.2 kg).', 'African-Penguin-L.jpeg', '“Endangered” on the IUCN Red List. Downgraded from “Vulnerable” in August 2010. Reflects the continuing decline in its populations.', 7),
(15, '2022-05-12 20:17:31', '2022-05-12 20:17:31', 'Common Murre', 'Uria aalge', 12, 'A pelagic seabird. Spends much of the year off shore; returns to the coast in the summer to nest and raise chicks. During breeding season, found along rocky coastal cliffs and offshore islands. During non-breeding season, ranges over adjacent waters usually only to the edge of the continental shelf.', 'This striking seabird spends much of its time at sea, hunting for a wide variety of fishes and squid. Murres, like guillemots and puffins, belong to a group of seabirds known as auks, or alcids. Murres and other alcids are well adapted for life on the ocean. They have short, strong wings and legs set far back on the body, making them excellent swimmers and divers. However, these same traits make alcids clumsy on land, and make taking flight more challenging.', 'Common-Murre-S.jpeg', 'common-murre', 'Consists mostly of a wide variety of fishes, including herring, cod, capelin, sand lance, haddock, as well as various crustaceans, polychaetes (marine worms) and squid.', 'Large member of the auk, or alcid, family. Common length of 15-17 inches (38-43 cm). Wingspan of 25-28 inches (64-71 cm).', 'Common-Murre-L.jpeg', '“Least Concern” on the IUCN Red List. The population is suspected to be in decline due to predation by invasive species and habitat destruction.', 14),
(16, '2022-05-12 20:19:22', '2022-05-12 20:19:22', 'Horned Puffin', 'Fratercula corniculata', 12, 'A pelagic seabird. Spends much of the year off shore; returns to the coast in the summer to nest and raise chicks. During breeding season, found along sea coasts, rocky cliffs and offshore islands. During non-breeding season, ranges over adjacent waters usually only to the edge of the continental shelf.', 'The horned puffin is named for the characteristic black projection over the eye. Puffins, like guillemots and murres, belong to a group of seabirds known as auks, or alcids. Puffins and other alcids are well adapted for life on the ocean. They have short, strong wings and legs set far back on the body, making them excellent swimmers and divers. However, these same traits make alcids clumsy on land, and make taking flight more challenging.', 'Horned-Puffin-S.jpeg', 'horned-puffin', 'Consists of a wide variety of fishes, including juvenile herring, capelin, sand lances and sometimes salmon and cod, as well as squid, crustaceans and polychaetes (marine worms). Chick diet consists primarily of sand lances and capelin.', 'Medium to large member of the auk, or alcid, family. Common length of 12.6 inches (32 cm). Wingspan range is 7.3-7.9 inches (18.6-20 cm). Common wingspan of 7.43 inches (18.9 cm).', 'Horned-Puffin-L.jpeg', '“Least Concern” on the IUCN Red List. The population is suspected to be in decline due to predation by invasive species and habitat destruction. Threats: A major cause of mortality for this species is bycatch in gillnets. Bycatch was most significant in the 1950s-1960s, when tens of thousands of puffins were killed by the salmon and squid fisheries. Since that time, bycatch has been more carefully monitored to prevent further decline. Some birds have been found to carry toxic trace metals in the liver, including mercury and cadmium, from the fish that puffins prey upon. Autopsied birds have also been found with PCBs (a group of man-made organic chemicals manufactured for a wide range of industrial applications during the 1900s) and organochlorine pesticides.', 11),
(17, '2022-05-12 20:21:42', '2022-05-12 20:21:42', 'Banggai Cardinalfish', 'Pterapogon kauderni', 13, 'The range of this cardinalfish is restricted to the Banggai Islands in Indonesia. It is common around jetties and over sandy bottoms with sea grasses.', 'This small, disc-shaped fish is easily recognized by its tasseled first dorsal fin; long, tapering second dorsal fin; and deeply forked tail, or caudal fin. The Banggai cardinalfish’s colors are striking—bright silver flecks and several bold, black, vertical stripes adorn its gray body.', 'Banggai-Cardinalfish-S.jpeg', 'banggai-cardinalfish', 'The Banggai, along with most others in the cardinalfish family, feeds on plankton and small, bottom-dwelling crustaceans.', 'This species reaches about 3 inches in total length.', 'Banggai-Cardinalfish-L.jpeg', 'Banggai cardinalfish were introduced into the pet trade in the 1990s and are popular in home aquariums. Because of their restricted range and shallow habitat, they are in danger of exploitation and over-collection. Some experts fear this could lead to extinction.', 14),
(18, '2022-05-12 20:25:51', '2022-05-12 20:25:51', 'Barramundi', 'Lates calcarifer', 13, 'The northern barramundi lives in the tropical coastal and fresh waters of northern and western Australia, as well as from the eastern edge of the Persian Gulf through China and as far north as southern Papua New Guinea.', 'The barramundi is a large, silver fish that changes sex as it grows. Once the fish reaches about 20 inches in length, it transitions from male to female.\r\nBarramundis are born in estuaries. They move temporarily to swamps, then to the mouths and upper regions of rivers until full grown. The fish spend the remainder of their lives in rivers before returning to estuaries to spawn.', 'Barramundi-S.jpeg', 'barramundi', 'Barramundi eat fish, crustaceans and plants.', 'The northern barramundi grows to a maximum length of about 6 feet.', 'Barramundi-L.jpeg', 'Barramundi are abundant but at risk due to recreational and commercial fishing, coupled with the length of time it takes this species to mature and reproduce. The population takes between four and 14 years to double in size.', 9),
(19, '2022-05-12 20:27:19', '2022-05-12 20:27:19', 'Black Grouper', 'Mycteroperca bonaci', 13, 'Black grouper range along the western Atlantic Ocean, from Massachusetts to Brazil.', 'Black groupers typically have dark coloration, with olive, gray or brown bodies and irregular bronze-colored blotches and spots. These groupers have several sets of teeth that help prevent fish from escaping while they’re feeding.\r\nBlack grouper are born female, but some transform into males when they are large enough. These fish can live for more than 30 years, though most are caught before reaching that age.', 'Black Grouper-S.jpeg', 'black-grouper', 'Adult black groupers feed on fish, while juveniles primarily eat crustaceans.', 'Black grouper can grow to more than 4 feet long and weigh upward of 170 pounds.', 'Black-Grouper-L.jpeg', 'Black grouper are considered near-threatened.', 12),
(20, '2022-05-12 20:30:52', '2022-05-12 20:30:52', 'Discus', 'Symphysodon discus', 13, 'Found in slow-moving fresh water, discus live in tributaries in the Amazon River basin. Schools of discus hide in underwater debris away from predators.', 'Nicknamed the “pompadour fish” for their distinctive look, discus have a round, flat body similar in shape to a disk. They vary in color, donning hues of green, red, brown and blue and have dark vertical stripes. These stripes serve a dual purpose: to aid in communication within a school of discus and to camouflage the fish from predators.\r\nTo reproduce, male and female discus together choose and clean a spot where the female will lay between 80 and 400 eggs. The male fertilizes the eggs, and both parents guard the eggs until they hatch. After hatching, the fry eat the slime off their parents’ skin until they’re old enough to eat larger pieces of food. Juvenile discus can live in groups but as they age will start to form bonded pairs and become territorial against other couples.', 'Discus-S.jpeg', 'discus', 'A discus’ diet includes worms, small crustaceans, insects, insect larvae and plant matter.', 'A discus’ diet includes worms, small crustaceans, insects, insect larvae and plant matter.', 'Discus-L.jpeg', 'Their population is believed to be stable.', 6),
(21, '2022-05-12 20:43:11', '2022-05-12 20:43:11', 'Emperor Angelfish', 'Pomacanthus imperator', 13, 'Emperor angelfish can be found in coral reefs in the Pacific and Indian oceans, and have been reported off the coast of Hawaii.', 'An adult emperor angelfish has a dark stripe across its eye area. The stripe resembles a mask and is meant to confuse predators. Its body is vibrantly colored, with alternating stripes in blue and yellow. However, a juvenile looks so different from an adult that it was once believed to be a different type of angelfish. Its body is dark blue with white and electric blue rings.\r\nMale emperor angelfish are territorial, and they will defend their living space, as well as the few females they share it with. This area can be as large as 10,760 square feet. Males may even attack other male emperor angelfish who try to enter their living space.', 'Emperor-Angelfish-S.jpeg', 'emperor-angelfish', 'This fish is omnivorous, eating both small invertebrates and plants. It prefers sponges and algae.', 'The emperor angelfish can grow to be up to 15 inches long.', 'Emperor-Angelfish-L.jpeg', 'The emperor angelfish is listed as Least Concern on the IUCN Red List.', 13),
(22, '2022-05-12 20:44:38', '2022-05-12 20:44:38', 'Green Moray Eel', 'Gymnothorax funebris', 13, 'The green moray is found in the western Atlantic Ocean, from New Jersey to Bermuda, and the northern Gulf of Mexico southward to Brazil. This solitary animal hides among cracks and crevices, along rocky shorelines and in coral reefs.', 'The green moray is actually brown! The yellow tint of the mucus that covers its body, in combination with a drab background color, gives the fish its namesake green color.\r\nThe moray eel is considered a \"\"true\"\" eel, classified in the order Anguilliformes. Like other true eels, the moray\'s dorsal fin begins just behind its head, extends along the length of its body and is fused with the caudal (tail) and anal fins. The moray eel also lacks both pelvic and pectoral fins.\r\nThe moray\'s muscular, scaleless body is laterally compressed (flattened side to side), and this eel is often feared and mistaken for a sea serpent.\r\nPart of their vicious reputation may come from the fact that they habitually open and close their mouths, which shows off their sharp teeth. Although this behavior may appear threatening, the eel is actually taking in water to breathe. The water passes over the gills and exits through vent-like openings at the back of the head.', 'Green-Moray-Eel-S.jpeg', 'green-moray-eel', 'The green moray feeds mostly at night on fishes, crabs, shrimp, octopuses and squid.', 'This species is one of the largest morays, with a maximum recorded length of 8 feet and weight of 65 pounds.', 'Green-Moray-Eel-L.jpeg', 'The green moray is common throughout much of its range.', 12),
(23, '2022-05-12 20:47:27', '2022-05-12 20:47:27', 'Big-Bellied Seahorse', 'Hippocampus abdominalis', 13, 'Typically found in rocky reefs in shallow waters among the sea grass beds and weeds, but can also be found attached to sponges and colonial hydroids in open water. The juvenile is pelagic (open water).', 'The female big-bellied seahorse will leave her eggs in the brood pouch of the male. The male will carry the eggs until they hatch.', 'Big-Bellied-Seahorse-S.jpeg', 'big-bellied-seahorse', 'Feeds nocturnally by sucking prey into its bony tubular snout with a flick of the head. Diet consists of small crustaceans such as copepods and other zooplankton.', 'Largest seahorse species in the waters around Southeast Australia, reaching a common length of 7 inches (18 cm).', 'Big-Bellied-Seahorse-L.jpeg', '“Data Deficient” on the IUCN Red List', 9),
(24, '2022-05-12 20:48:33', '2022-05-12 20:48:33', 'Bigmouth Buffalo', 'Ictiobus cyprinellus', 13, 'Mainly inhabits channels, deep pools and backwaters of small to large rivers, as well as lakes and large impoundments. Often found in schools in mid-water and near the bottom.', 'Unlike the smallmouth buffalo, the bigmouth buffalo has a mouth that is oriented more forward than downward.', 'Bigmouth-Buffalo-S.jpeg', 'bigmouth-buffalo', 'Benthic feeder; diet consists of copepods, cladocerans, bottom plants, aquatic insects, small fish and fish eggs.', 'Maximum length of approximately 50 inches (1.3 m) and maximum weight of 70 lbs. (32 kg).', 'Bigmouth-Buffalo-L.jpeg', '“Not evaluated” on the IUCN Red List.', 5),
(25, '2022-05-12 20:49:40', '2022-05-12 20:49:40', 'Bignose Unicornfish', 'Naso vlamingii', 13, 'Found in deep lagoon and seaward reefs to depths of 164 feet (50 m). Usually appears in mid-water aggregations above reef slopes. Common around wrecks.', 'An adult bignose unicornfish has a long, curved snout.', 'Bignose-Unicornfish-S.jpeg', 'bignose-unicornfish', 'Diet consists of zooplankton. Feeds during the day above reef slopes.', 'Maximum length of 21.5 inches (55 cm).', 'Bignose-Unicornfish-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 7),
(26, '2022-05-12 20:50:44', '2022-05-12 20:50:44', 'Black Crappie', 'Pomoxis nigromaculatus', 12, 'Found in lakes, ponds, sloughs, and backwaters and pools of streams. Usually among vegetation over mud or sand, and is most common in clear water. Widely introduced throughout North America, making its native habitat difficult to determine.', 'The black crappie does not tolerate murky waters well. It prefers a habitat with clear water.', 'Black-Crappie-S.jpeg', 'black-crappie', 'Diet consists of small fishes and larger invertebrates. Juvenile (up to approximately 6 inches (16 cm) in length) consumes zooplankton, including planktonic crustaceans and free swimming insect larvae.', 'Common length of 8-12 inches (20-30 cm); maximum length of 19.3 inches (49 cm). Maximum weight of 6 lbs. (2.7 kg).', 'Black-Crappie-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 12),
(27, '2022-05-12 20:51:51', '2022-05-12 20:51:51', 'African Butterfly', 'Pantodon buchholzi', 12, 'Inhabits the upper strata of open water in swamps, creeks, ponds and backwaters of streams and rivers with dense amounts of surface floating vegetation.', 'The African butterflyfish is an insectivore. In fact, the African butterflyfish has sensors that detect small waves in the water caused by insects hitting the water\'s surface.', 'African-Butterfly-S.jpeg', 'african-butterfly', 'Insectivore; diet consists of on terrestrial insects, aquatic larvae, nymphs of insects, crustaceans and fish. Efficient ambush predator. Known to eat terrestrial insects that fall to the surface of the water or are situated on low branches or leaves. Powerful jumper. Known to jump out of the water to catch insects or to escape predators. Use its large, broad caudal fin to propel itself out of the water.', 'Maximum recorded length of 5.9 inches (15 cm).', 'African-Butterfly-L.jpeg', 'Listed as “Least Concern” on the IUCN Red List.', 7),
(28, '2022-05-12 20:52:59', '2022-05-12 20:52:59', 'African Moony', 'Monodactylus sebae', 12, 'Found in brackish, marine and fresh water mixtures, commonly in estuaries, lagoons and marshes. Can also be found farther into bodies of fresh water and in shallow bay or harbor areas of the sea.', 'The African moony is often found in a wide variety of different habitats. Although they are most often found in estuaries and lagoons, they can also be found farther into bodies of freshwater.', 'African-Moony-S.jpeg', 'african-moony', 'Diet consists of fish, shrimp and zooplankton.', '5.9-9.8 inches (15-25 cm)', 'African-Moony-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 7),
(29, '2022-05-12 20:54:03', '2022-05-12 20:54:03', 'Amazon Puffer', 'Colomesus asellus', 12, 'Found in tropical fresh and brackish water, typically in coastal and freshwater streams. Prefers freshwater.', 'Also known as the South American puffer, the Amazon puffer is a small, colorful fish typically occurring in South America\'s Amazon River basin, Orinoco River basin and Essequibo River basin, as well as Araguaia and Guapore Rivers. They are yellow-green in color with black stripes along its body and a white ventral region. Their diet consists of invertebrates - namely gastropods, insect larvae and crustaceans. Unlike most other freshwater puffers, the Amazon puffer does neither maintain a territory nor displays aggression toward other fishes.', 'Amazon-Puffer-S.jpeg', 'amazon-puffer', 'Diet consists of invertebrates – namely gastropods, insect larvae and crustaceans.', 'May reach 5 inches (12.8 cm) in total length.', 'Amazon-Puffer-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 6),
(30, '2022-05-12 20:55:05', '2022-05-12 20:55:05', 'Arc-Eye Hawkfish', 'Paracirrhites arcatus', 12, 'Found in lagoons and seaward reefs at depths of about 3.3-108 feet (1-33 m).', 'Found in relatively shallow water (less than 100 feet or 33 m) in the Indo-Pacific, the arc-eye hawkfish can often be spotted perching on rocky outcropping or coral – like a hawk in a tree!', 'Arc-Eye-Hawkfish-S.jpeg', 'arc-eye-hawkfish', 'Diet consists of shrimp, small fishes, crab and other crustaceans.', 'Maximum length of about 7.8 inches (20 cm).', 'Arc-Eye-Hawkfish-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 9),
(31, '2022-05-12 20:56:25', '2022-05-12 20:56:25', 'Banded Archerfish', 'Toxotes jaculatrix', 12, 'Found primarily in brackish mangrove estuaries, but also penetrates adjacent rivers and small streams. Also reported to occur near overhanging vegetation on reefs.', 'Banded archerfish inhabit the brackish mangrove estuaries of India and eastward to northern Australia. Archerfish are renowned for their ability to “shoot down” insect prey by expelling beads of water from their mouth with considerable force.', 'Banded-Archerfish-S.jpeg', 'banded-archerfish', 'Feeds at the surface during the daytime on floating debris which includes insects and plant material. Renowned for its ability to “shoot down” insect prey by expelling beads of water from its mouth with considerable force.', 'Common length of about 8 inches (20 cm), but occasionally individuals as long as 12 inches (30 cm) have been reported.Discus may reach 5½ inches (14 cm) in total length.', 'Banded-Archerfish-L.jpeg', '“Least Concern” on the IUCN Red List.', 9),
(32, '2022-05-12 20:57:25', '2022-05-12 20:57:25', 'Banded Rainbowfish', 'Melanotaenia trifasciata', 12, 'Found mainly in streams or water holes at depths from 11.8 inches (30 cm) to 6.6 feet (20 m). Habitat is usually well-vegetated and may contain rocks, gravel, leaves and mud.', 'The banded rainbowfish can be found in a variety of different colors depending on geography, water conditions and diet. The male is larger and more brightly colored than the female.', 'Banded-Rainbowfish-S.jpeg', 'banded-rainbowfish', 'Omnivorous species. Diet consists of aquatic insects, algae and plant material. Benthopelagic; feeds near the bottom, midwaters and at the surface of the water. Juvenile also feeds on zooplankton.', 'Common length of 3.1 inches (8 cm). Maximum length of 5.1 inches (13 cm).', 'Banded-Rainbowfish-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 9),
(33, '2022-05-12 21:05:34', '2022-05-12 21:05:34', 'Anemones', 'Actiniaria', 14, 'Anemones are found worldwide in all marine habitats. They can be found in a range of temperatures, from the cold water of the north Pacific to the warm water of the Caribbean, and live at various depths, from the shallower waters of the tidal zone up to depths of 1.8 miles (3,000 meters).', 'Sea anemones are named after and resemble flowers, but they’re actually invertebrates related to corals and jellies. Their bodies consist of a soft, cylindrical stalk topped by an oral disc surrounded with venomous tentacles.\r\nAt their base, they sport a single adhesive foot, called a basal disc, which they use to attach to underwater surfaces like rocks or shells. Anemones can have anywhere from a dozen to a few hundred tentacles. These cnidarians come in a variety of colors, decorating a tide pool or reef like a garden of wildflowers.\r\nAnemones are known to form symbiotic relationships with other animals; their most well-known alliance is with clownfish. Because of a protective mucous coating, clownfish are immune to an anemone’s stinging cells. They make their homes within the anemone’s tentacles, protected from predators; in return, the anemone eats the clownfish’s leftover meals.\r\nAt the National Aquarium, you’ll find 16 different species of sea anemones.', 'Anemones-S.jpeg', 'anemones', 'Anemones are carnivorous, feeding on tiny plankton or fish. Their stinging tentacles are triggered by the slightest touch, firing a harpoon-like filament called a nematocyst into their prey. Once injected with the paralyzing neurotoxin, the prey is guided into the mouth by the tentacles. An anemone has a single opening in the center of an oral disc, by which it consumes food and excretes waste. At the Aquarium, they are fed pieces of shrimp, fish and krill.', 'Most anemones are small, but some can grow as large as 6.5 feet in diameter.', 'Anemones-L.jpeg', 'Most anemone species are non-threatened, but there are a few considered vulnerable.', 11),
(34, '2022-05-12 21:06:43', '2022-05-12 21:06:43', 'Atlantic Bay Nettle', 'Chrysaora chesapeakei', 14, 'Atlantic bay nettles are found in brackish waters of coastal bays along the East Coast of the United States and the Gulf of Mexico, from New England to Texas. These jellies can thrive in very low salinities, as well as salt water.', 'The Atlantic bay nettle has two color varieties; in the upper Chesapeake Bay, the white variety is most prevalent, and closer to the Atlantic Ocean, this jelly can have a white, red or brown coloration. Nettles populate the Chesapeake Bay and its tributaries primarily from July through September, though some individuals can be present into November.', 'Atlantic-Bay-Nettle-S.jpeg', 'atlantic-bay-nettle', 'Atlantic bay nettles feed on zooplankton, worms, mosquito larvae, fish eggs, juvenile crustaceans and other jellies.', 'The Atlantic bay nettle\'s bell can grow up to 7 inches wide.', 'Atlantic-Bay-Nettle-L.jpeg', 'Atlantic bay nettles are common in the Chesapeake Bay in the summer months and into fall.', 5),
(35, '2022-05-12 21:08:00', '2022-05-12 21:08:00', 'Atlantic Horseshoe Crab', 'Limulus Polyphemus', 14, 'Horseshoe crabs are found all along the North American Atlantic coast, from Nova Scotia in the north to Mexico’s Yucatan Peninsula in the south.', 'Often referred to as living fossils, the ancestors of Atlantic horseshoe crabs can be traced back more than 400 million years! Since that time, not much about the horseshoe crab’s anatomy has changed. Its shell is horseshoe-shaped, rounded in the front and designed for plowing through bottom sand and mud in search of invertebrate prey. Horseshoe crabs have a dark brown, hinged shell and a long, pointed tail, called a telson. The spiked telson might look menacing but it’s harmless—the animal uses it as a rudder to steer through the water and flip itself over when toppled by a wave.\r\nThis species has 10 eyes scattered throughout its body. Its brain can be found in a thin circle around its mouth, which is located on its underside and is surrounded by bristles used to chew food.\r\nDespite the common name “horseshoe crab,” it is not a crab or a crustacean but an arthropod. Their closest living relatives are spiders and scorpions and their closest ancestor is probably the trilobite that lived 400 million years ago. Horseshoe crabs have unique blood that turns blue when exposed to oxygen due to the presence of a copper-based protein. Cells in the blood can detect the presence of disease-causing bacteria. Pharmaceutical companies produce a biomedical product from horseshoe crab blood, which is used to screen for the presence of bacterial contamination in injectable medicines and implants.\r\nThere is one species of horseshoe crabs found in coastal waters of the western Atlantic and three species found in coastal waters off Southeast Asia in the Indo-Pacific.', 'Atlantic-Horseshoe-Crab-S.jpeg', 'atlantic-horseshoe-crab', 'Horseshoe crabs feed on marine worms, clams, snails, crustaceans and dead fish, supplemented by algae and detritus.', 'Female horseshoe crabs grow larger than males, reaching a maximum length of 24 inches (including the tail), while males reach total lengths of around 15 inches.', 'Atlantic-Horseshoe-Crab-L.jpeg', 'Horseshoe crab populations are decreasing and considered vulnerable, according to the International Union for Conservation of Nature (IUCN) Red List of Threatened Species. In addition to overharvesting, bycatch and habitat loss from shoreline development, their spawning beaches are threatened by climate change and the severe weather it causes.', 5),
(36, '2022-05-12 21:09:16', '2022-05-12 21:09:16', 'Blue Blubber Jelly', 'Catostylus mosaicus', 14, 'The blue blubber can be found in coastal waters of eastern and northern Australia.', 'The blue blubber jelly actually ranges in color from white to light blue to dark purple. Its bell pulses in a distinctive, staccato-like rhythm.', 'Blue-Blubber-Jelly-S.jpeg', 'blue-blubber-jelly', 'The blue blubber jelly feeds primarily on zooplankton.', 'The bell of this jelly can be up to 16 inches wide.', 'Blue-Blubber-Jelly-L.jpeg', 'In the past, jelly populations were kept in check by predators like sea turtles and jelly-eating fish. Due to the reduction in the populations of their predators, jelly populations are growing at alarming rates.', 14),
(37, '2022-05-12 21:10:30', '2022-05-12 21:10:30', 'Electric Eel', 'Electrophorus electricus', 14, 'Electric eels are found in murky pools and calm stretches of the middle and lower Amazon and Orinoco river basins in South America.', 'Electrophorus electricus—everything about this fish’s scientific name says high voltage! So, it’s no surprise that of the fishes able to generate an electrical discharge, electric eels are the champions, producing up to 600 volts.\r\nElectric eels live in muddy waters. Mostly blind, they rely on low-level electrical pulses to navigate and explore their surroundings. Higher levels of voltage are generated to stun or kill prey and to protect them from predators.\r\nThough commonly referred to as an eel, this fish is not considered a “true” eel. While true eels are classified in the order Anguilliformes, the electric eel is actually in the order Gymnotiformes, the knife fishes. Knife fishes have no dorsal fin and a long, extended anal fin.\r\nAlthough not true eels, these nearly scaleless fish look the part with long, cylindrical bodies and a slightly flattened head. The electric eel’s anal fin extends from the tip of the tail nearly to the chin. Fluttering like a ribbon, it allows the fish to move forward and backward with ease.\r\nThe electric eel’s vital organs are contained in just one-fifth of its body, directly behind its head. The rest of the body contains the organs that generate electricity.', 'Electric-Eel-S.jpeg', 'electric-eel', 'Juveniles feed on invertebrates, such as crabs and freshwater shrimp. As adults, they eat amphibians, fishes and crustaceans.', 'Electric eels can grow to more than 8 feet in length and can weigh nearly 45 pounds.', 'Electric-Eel-L.jpeg', 'Electric eels are abundant throughout their range, but cannot be collected without a scientific permit. Some areas have strict laws prohibiting hobbyists from keeping electric eels because they pose a potential threat to local fish and human populations if they were to escape.', 6),
(38, '2022-05-12 21:12:35', '2022-05-12 21:12:35', 'Giant Pacific Octopus', 'Enteroctopus dofleini', 14, 'The giant Pacific octopus can be found in southern California, northward along the coast of North America, across the Aleutian Islands and southward to Japan.', 'Octopuses (yes, that is the correct plural of octopus) are cephalopods—a class of marine mollusks that also includes squid and cuttlefish. Cephalopod is derived from a Greek word meaning “head-feet.” Of the 800 identified living species of cephalopods, 300 are octopuses!\r\nGiant Pacific octopuses have large heads, eight arms and are usually reddish-brown in color. They also have three hearts and a complex neural system that includes one central, cerebral ganglion and eight smaller ganglia at the base of their arms. Think of these smaller systems as external hard drives that report data back to a computer’s central processing unit.', 'Giant-Pacific-Octopus-S.jpeg', 'giant-pacific-octopus', 'Newly hatched octopuses feed on plankton (small, microscopic organisms), while adults feed on crabs, shrimp, clams, snails, fishes and even other octopuses, using their beaks to break open hard-shelled prey.', 'The giant Pacific octopus is the largest and longest living species of octopus. They’ve been known to grow to more than 150 pounds, but on average weigh approximately 45 to 65 pounds.', 'Giant-Pacific-Octopus-L.jpeg', 'Due to their short lifespan and reclusive habits, it’s difficult to assess populations of giant Pacific octopuses, but this species is common throughout its range.', 14),
(39, '2022-05-12 21:14:06', '2022-05-12 21:14:06', 'Moon Jelly', 'Aurelia aurita', 14, 'Found in surface waters, often over reefs and along the coast.', 'None founded', 'Moon-Jelly-S.jpeg', 'moon-jelly', 'Diet consists primarily of zooplankton, including small shrimps, fish eggs and larvae. Collects food on the upper and lower surfaces of the dome where cilia carry it, entrapped in mucus, to the margin. Food collects in small pockets, where it is removed by the tips of four long arms that then transfer the food to the gastrovasculuar cavity located in the middle of the underside of the dome.', 'Maximum diameter of 2 feet (61 cm)', 'Moon-Jelly-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 13);
INSERT INTO `animal` (`id`, `created_at`, `updated_at`, `normal_name`, `scientific_name`, `id_category`, `habitat`, `overview`, `shortThumbnail`, `hrefParam`, `diet`, `size`, `longThumbnail`, `population_status`, `id_range`) VALUES
(40, '2022-05-12 21:15:17', '2022-05-12 21:15:17', 'Pacific Sea Nettle', 'Chrysaora fuscescens', 14, 'Found in largest numbers during fall and winter.', 'The Pacific sea nettle has four oral arms that extend downward as much as 12 feet from its underside.', 'Pacific-Sea-Nettle-S.jpeg', 'pacific-sea-nettle', 'Diet consists of a wide variety of zooplankton including tiny crustaceans, invertebrate larvae, comb jellies, small fishes, fish eggs and larvae, as well as other jellies.', 'The dome, or “bell,” is golden brown in color and has four ruffled oral arms extending downward as much as 12 feet (3.6 m) from its underside. There are also about 24 to 40 thin, maroon tentacles extending downward from around the perimeter of the bell. This bell-and-tentacles body shape is the adult stage of the nettle, called a “medusa.”', 'Pacific-Sea-Nettle-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 14),
(41, '2022-05-12 21:18:58', '2022-05-12 21:18:58', 'Peacock Mantis Shrimp', 'Odontodactylus scyllarus', 14, 'Found in coral reefs and sand flats in depths up to 130 feet (40 m). Dig U-shaped burrows they emerge from when hunting.', 'Found in coral reefs and sand flats in depths up to 130 feet (40 m).\r\nDig U-shaped burrows they emerge from when hunting.', 'Peacock-Mantis-Shrimp-S.jpeg', 'peacock-mantis-shrimp', 'Diurnal, opportunistic feeder. Diet consists mainly of crustaceans and mollusks. Uses fast, club-like appendages to strike its prey. This impact is very strong, and can easily stun, kill or break apart prey. Full extension of appendages may take as few as three milliseconds.', 'Adult may grow up to 7.0 inches (18 cm).', 'Peacock-Mantis-Shrimp-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 13),
(42, '2022-05-12 21:20:02', '2022-05-12 21:20:02', 'Peppermint Shrimp', 'Lysmata wurdemanni', 14, 'Found on coral reefs, sometimes inside tube sponges, at depths of 3-90 feet (1-30 m).', 'Known as scavengers and cleaners, peppermint shrimp feed on debris and parasites from larger animals. The coloration of this species helps to give it its name, with pale to translucent legs and a body that is lined all over with bright red or flame orange stripes.', 'Peppermint-Shrimp-S.jpeg', 'peppermint-shrimp', 'Peppermint shrimp is a scavenger and cleaner, feeding on debris and parasites from larger animals.', 'Peppermint shrimp reaches lengths of 1.75 inches (4.4 cm).', 'Peppermint-Shrimp-L.jpeg', 'None Founded', 5),
(43, '2022-05-12 21:21:04', '2022-05-12 21:21:04', 'Pink Sea Star', 'Pisaster brevispinus', 14, 'Found in subtidal areas with mud or sand bottom to about 360 feet (110 m) depth. Appears more frequently in bays than in open coast, often seen on floats and pilings.', 'The pink sea star is typically pink to lavender in color with a soft, smooth surface texture.', 'Pink-Sea-Star-S.jpeg', 'pink-sea-star', 'Diet consists of sand dollars, polychaetes, mussels, clams and other bivalve mollusks. To reach buried bivalves it can extend tube feet next to its mouth about an inch (several centimeters) into the sediment to pull its prey to the surface. Also extends its stomach over prey to digest it. Opportunistic scavenger feeding on dead fish and other animals.', 'Top surface is composed of tiny spines less than 0.75 inch (2 cm) in length. Can reach a diameter of 20-28 inches (51-71 cm) or in excess of 24 inches (61 cm). Arms may be up to 3 inches (7.6 cm) thick.', 'Pink-Sea-Star-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 5),
(44, '2022-05-12 21:22:17', '2022-05-12 21:22:17', 'Purple Sea Urchin', 'Strongylocentrotus purpuratus', 14, 'Found on rocky shores from the low-tide line to depths of 525 feet (160 m).', 'The purple sea urchin grows from a greenish colored juvenile to a vivid purple adult.', 'Purple-Sea-Urchin-S.jpeg', 'purple-sea-urchin', 'Purple sea urchin eats brown and red algae, kelp, and decaying plant and animal matter. It is able to grasp food using its spines and tube feet.', 'This sea urchin grows from a greenish colored juvenile to a vivid purple adult. It can grow to 4 inches (10.2 cm) wide and almost 2 inches (5 cm) high.', 'Purple-Sea-Urchin-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 14),
(45, '2022-05-12 21:23:28', '2022-05-12 21:23:28', 'Rainbow Sea Star', 'Orthasterias koehleri', 14, 'Found on mud, sand and kelp in the very low intertidal zone on shaded rock surfaces.', 'The rainbow sea star can be found in a variety of colors, hence its name. It ranges from rosy pink with grey to bright red mottling, or banded in yellow.', 'Rainbow-Sea-Star-S.jpeg', 'rainbow-sea-star', 'Diet consists of a wide variety of invertebrates: small snails, limpets, clams, scallops, barnacles and tunicates. Can dig clams out from a cobbled (stony) ocean bottom. Uses its arms to pry open the two halves of the clam’s shell just enough to allow the sea star to insert its stomach inside the shell. Stomach then releases juices dissolving the clam tissue absorbed by the stomach.', 'Can reach 20 inches (50 cm) in diameter.', 'Rainbow-Sea-Star-L.jpeg', '“Not Evaluated” on the IUCN Red List.', 5),
(46, '2022-05-12 21:24:43', '2022-05-12 21:24:43', 'Blacktip Reef Shark', 'Carcharhinus melanopterus', 15, 'Found in shallow inshore waters on coral reefs, in the intertidal zone (reef flats) and near reef drop-offs. Also found in mangrove areas, moving in and out with the tide. Has been observed in fresh water, but not in tropical lakes and rivers far from the sea. Usually found in depths 65 to 246 feet (20-75 m).', 'The small shark is named for its distinct black-tipped fins. Not to be confused with the blacktip shark, a larger species with similar fin coloration, the blacktip reef shark can be found in shallow inshore waters throughout the Indo-Pacific, including coral reefs, reef flats and near drop offs. It may be seen in mangrove areas and even freshwater environments near to shore, moving in and out with the tide. The blacktip reef shark feeds primarily on fish, including many common reef fishes, but will also consume crustaceans, mollusks, and even snakes!', 'Blacktip-Reef-Shark-S.jpeg', 'blacktip-reef-shark', 'Blacktip reef shark prefers fish, but also feeds on crustaceans, cephalopods and other mollusks. Common prey includes surgeonfish and mullet. In inshore mangrove areas, this shark will also consume snakes.', 'The maximum recorded weight is 30 lbs. (13.6 kg).', 'Blacktip-Reef-Shark-L.jpeg', '“Near Threatened” on the IUCN Red List.', 7),
(47, '2022-05-12 21:26:02', '2022-05-12 21:26:02', 'Bowmouth Guitarfish', 'Rhina ancylostoma', 15, 'Usually is encountered at depths from about 3 to 65 feet (1-20 m) on sandy or muddy bottoms close to shore or near coral reefs. This ray is usually seen swimming alone.', 'This distinctively shaped fish is a type of ray, but is often mistaken for a shark. The front portion of the body is flattened and wide, resembling a ray, while the back portion of the body is very shark-like in appearance. The bowmouth guitarfish has a broad, rounded snout with rows of spikey thorns above the eyes and along the back and shoulders. It may use its spikey head defensively for butting, and can be troublesome to fishermen who capture it as bycatch. The bowmouth guitarfish can be found in tropical water of the Indo-West Pacific along sandy bottoms or near reefs, where it feeds on crustaceans and mollusks.', 'Bowmouth-Guitarfish-S.jpeg', 'bowmouth-guitarfish', 'Feeds primarily on benthic crustaceans and mollusks such as shrimp, crabs, and clams.', 'Adult can reach a length of approximately 9.8 feet (300 cm) and a maximum weight of about 298 lbs. (135 kg).', 'Bowmouth-Guitarfish-L.jpeg', '“Critically Endangered” on the IUCN Red List.', 7),
(48, '2022-05-12 21:27:12', '2022-05-12 21:27:12', 'Cownose Ray', 'Rhinoptera bonasus', 15, 'Found in tropical climates to depths of 72 feet (22 m).', 'This ray is named for the distinctive shape of its forehead, which bears two lobes resembling the nostrils of a cow’s nose. A pelagic species, the cownose ray can be found both near the coast and out in the open ocean throughout its range, and may be seen travelling in large aggregations of thousands of individuals. It feeds on a variety of species, including crustaceans, bivalves and small fish, and uses its plate-like teeth to crush the hard shells of its prey. Known to swim near the surface with a flying motion, this ray has often been mistaken for a shark - when its wingtips break the surface of the water, it resembles the dorsal fin of a small shark swimming in the shallow.', 'Cownose-Ray-S.jpeg', 'cownose-ray', 'Feeds on crabs, bi-valves, lobsters and bony fish.', 'Common length of 3.8 feet (1.2 m) but rays as large as 7 feet (2.13 m) wide have been recorded.', 'Cownose-Ray-L.jpeg', '“Near Threatened” on the IUCN Red List.', 12),
(49, '2022-05-12 21:28:36', '2022-05-12 21:28:36', 'Great Hammerhead Shark', 'Sphyrna mokarran', 15, 'Highly migratory species. May be found in both inshore and offshore waters. Typically found over the continental shelf, near islands and reefs, and in lagoons. Most commonly found in shallow water at depths to 328 feet (100 m) but may occasionally be found at depths to 984 feet (300 m).', 'Genus name, Sphyrna, is Greek for “hammer.” There are many theories as to the purpose of the hammer-shaped head of this genus. One proposal is that the lobes enlarge the area for the electro-sensory system this shark uses to find its prey. Considered potentially dangerous to humans. Although relatively few attacks by this species have been recorded, this may be in part due to the difficulty in distinguishing different species of hammerheads. Listed as “Endangered” on the IUCN Red List. This species is sometimes targeted for fishing due to its large fins, which are considered particularly desirable in the fin trade for use in shark fin soup. Also targeted for its meat, liver oil, hides, carcasses (for fishmeal), and for sport. Caught as by-catch during many commercial fishery operations. Adult has no natural predators except for humans. Juvenile may be preyed upon by larger sharks.', 'Great-Hammerhead-Shark-S.jpeg', 'great-hammerhead-shark', 'Diet consists primarily of stingrays, other rays and skates. May also consume other sharks, including other hammerhead sharks, bony fish, including groupers and sea catfish, squid and bottom dwelling crustaceans. Commonly feeds by pinning prey down with hammer and biting pieces off. Feeding primarily occurs at dusk.', 'As in many shark species, the female is larger than the male. Common length for adult female is 15.8-18 feet (4.9-5.5 m); common length for adult male is about 12.1 feet (3.7 m). Common length at birth is about 1.6-2.3 feet (50-70 cm). Maximum length recorded was 20 feet (6.1 m). Maximum weight recorded was 991 pounds (449.5 kg).', 'Great-Hammerhead-Shark-L.jpeg', 'None Founded', 9),
(50, '2022-05-12 21:29:49', '2022-05-12 21:29:49', 'Leopard Whipray', 'Himantura undulata', 15, 'This stingray is found inshore over sandy bottom in the open and near reefs.', 'None Found', 'Leopard-Whipray-S.jpeg', 'leopard-whipray', 'Leopard whipray feeds on crabs, shrimp and shelled invertebrates.', 'This is a large stingray that can reach 13.5 feet (4 m) in length, including its tail, and will grow to about 4.6 feet (1.4 m) in width. The newborn pups, on average, are about 8 inches (20 cm) wide.', 'Leopard-Whipray-L.jpeg', '“Vulnerable” on the IUCN Red List.', 14),
(51, '2022-05-12 21:30:42', '2022-05-12 21:30:42', 'Longcomb Sawfish', 'Pristis zijsron', 15, 'Mainly bottom dwelling, found in shallow bays, lagoons and estuaries. Has been found at depths up to 131 feet (40 m), but 1 to 16 feet (1 to 5 m) seems to be most common.', 'Despite the shark-like appearance of their bodies, sawfishes are actually members of the ray family. A sawfish can be easily recognized by its saw-like rostrum, which is long and narrow, with a row of modified, tooth-like scales on either side. The longcomb sawfish will use its rostrum to help it hunt or forage for food. This sawfish feeds primarily on slow moving, schooling fish – it will first swim alongside its prey and then strike it with a sudden swipe of its toothed rostrum. This sawfish may also use its rostrum to stir up the sandy bottom to find bottom-dwelling crustaceans and shellfish.', 'Longcomb-Sawfish-S.jpeg', 'longcomb-sawfish', 'Diet consists primarily of slow schooling fishes, such as mullet.', 'Common length of 18 feet (550 cm), with a maximum length of 23.9 feet (730 cm).', 'Longcomb-Sawfish-L.jpeg', '“Critically Endangered” on the IUCN Red List.', 14),
(52, '2022-05-12 21:31:48', '2022-05-12 21:31:48', 'Manta Ray', 'Mobula sp. cf. birostris', 15, 'Frequently observed around reefs, atolls, Island groups and the continental shelf with consistent upwelling currents.', 'The massive manta ray is also known as the devil ray, because its cephalic lobes – the fleshy appendages on either side of the ray’s wide mouth – resemble horns when extended forward. Their true purpose, however, is for feeding. These gentle giants are filter feeders, consuming only plankton and small fishes, and use the cephalic lobes to direct food toward the mouth. During feeding, the manta ray may also swim in somersaults in order to pass through a cluster of plankton multiple times. Food that enters the mouth is filtered from the water by the ray’s gill rakers, and then swallowed whole.', 'Manta-Ray-S.jpeg', 'manta-ray', 'Manta ray is primarily a plankton feeder, but also consumes small fishes. Its two cephalic lobes are unrolled and held at a downward angle to create a funnel guiding prey into its mouth.', 'Reaching weights of up to 3,080 lbs. (1400 kg). The maximum adult size is about 20 feet (6 m).', 'Manta-Ray-L.jpeg', '“Endangered” on the IUCN Red List. CITES Appendix 2.', 12),
(53, '2022-05-12 21:33:03', '2022-05-12 21:33:03', 'Motoro Ray', 'Potamotrygon motoro', 15, 'Found in shallow, murky waters.', 'Motoro rays are found in the shallow, murky waters of river basins in northern South America. Like many stingray species, motoro rays lie on the bottom of rivers, almost completely covered in sand, and wait for prey. Because of its powerful sting, this species is feared more than piranha throughout its range.', 'Motoro-Ray-S.jpeg', 'motoro-ray', 'Can grow to about 3.3 feet (100 cm) in diameter and weigh 33 lbs. (15 kg).', 'Can grow to about 3.3 feet (100 cm) in diameter and weigh 33 lbs. (15 kg).', 'Motoro-Ray-L.jpeg', '\"Data deficient” on the IUCN Red List.', 6),
(54, '2022-05-12 21:34:02', '2022-05-12 21:34:02', 'Porcupine Ray', 'Urogymnus asperrimus', 15, 'Found in sandy bottom areas and small caves, also frequents coral rubble around reefs.', 'The porcupine ray has thick skin that is armored with strong dermal denticles which vary from flat to pointed and thorn-like. These pointed dermal denticles is how it gets its name.', 'Porcupine-Ray-S.jpeg', 'porcupine-ray', 'Small fish, mollusks, and crustaceans.', 'Porcupine ray reaches a maximum length of 4.8 feet (147 cm).', 'Porcupine-Ray-L.jpeg', 'Porcupine ray reaches a maximum length of 4.8 feet (147 cm).', 14),
(55, '2022-05-12 21:35:15', '2022-05-12 21:35:15', 'Roughtail Stingray', 'Dasyatis centroura', 15, 'In West Africa, it occurs not only in marine habitats but also in estuaries and the lower reaches of rivers. Found in sandy and muddy bottoms from near shore to about 899 feet (274 m) in the Western Atlantic and to about 197 feet (60 m) in the Eastern Atlantic. In both areas, finding these rays at depths to about 164 feet (50 m) are more common.', 'Named for its most distinguishable feature, the roughtail ray’s tail has numerous rows of small thorns. The tail can be about two and a half times the length of the ray’s body and is long, slender and whip-like. This is also one of the largest species of stingray, growing 7 feet (2.1 m) across and 14 feet (4.2 m) long, including the tail.', 'Roughtail-Stingray-S.jpeg', 'roughtail-stingray', 'Feeds on bottom-living crustaceans, cephalopods and bony fishes.', 'One of the largest stingrays, the roughtail stingray grows to about 7 feet (2.1 m) across its disc and 14 feet (4.2 m) long, including the tail. It can weigh as much as 660 lbs. (300 kg).', 'Roughtail-Stingray-L.jpeg', '“Least Concern” on the IUCN Red List.', 12),
(56, '2022-05-12 21:36:16', '2022-05-12 21:36:16', 'Round Ribbontail Ray', 'Round Ribbontail Ray', 15, 'Usually associated with reefs; also found in a wide variety of habitats from shallow lagoons to outer reef slopes. Can be encountered from near the surface to depths of about 1,640 feet (500 m); most common between approximately 66 and 197 feet (20-60 m).', 'Also known as the “marbled ray” or “black blotch fantail ray”, the round ribbontail ray has a black and white mottled upper surface. This large stingray has a maximum length of nearly 11 feet (330 cm) snout to tail and disc widths of about 10 feet (3 m) have been reported. Round ribbontail rays can be found swimming alone or in schools, often accompanied by fish like jacks or cobia.', 'Round-Ribbontail-Ray-S.jpeg', 'round-ribbontail-ray', 'Diet consists of bottom fishes, bivalves, crabs and shrimp.', 'Maximum length of nearly 11 feet (330 cm) (snout to tail). Disc widths of about 10 feet (3 m) and weights of 330 lbs. (150 kg) have been reported.', 'Round Ribbontail Ray-L.jpeg', '“Vulnerable” on the IUCN Red List.', 14),
(57, '2022-05-12 21:37:36', '2022-05-12 21:37:36', 'Sand Tiger Shark', 'Carcharias taurus', 15, 'Found in shoreline habitats to depths of about 625 feet (190 m).', 'The sand tiger shark is the only shark species that swim to the surface and swallows air in order to regulate its buoyancy. This enables it to remain motionless at any depth while seeking prey. It is listed as “Critically Endangered” on the IUCN Red List. It is not listed under CITES. The population is likely declining at a rate of 30 percent or more every ten years. Sand tiger sharks are a prohibited species for recreational and commercial fishermen in NOAA’s Highly Migratory Species Compliance Guide. Its current threats include accidental mortality due to by-catch.', 'Sand-Tiger-Shark-S.jpeg', 'sand-tiger-shark', 'Diet consists of bony fishes, smaller sharks, rays, squid, crabs and lobsters.', 'Ranges in length from 6.5 to 10.5 feet (2.0-3.2 m) and may weigh 200 to 350 lbs. (91-159 kg).', 'Sand-Tiger-Shark-L.jpeg', 'None Found', 12),
(58, '2022-05-12 21:38:43', '2022-05-12 21:38:43', 'Sandbar Shark', 'Carcharhinas plumbeus', 15, 'This shark is essentially a coastal shallow-water shark that is seldom seen at the surface. It can be found offshore over the continental shelf and around islands, typically at depths between about 60 and 200 feet (20-65 m). Occasionally, it moves into the adjacent water to depths of over 900 feet (280 m) during migrations (see below). Often found in bays, river mouths and harbors with smooth substrate. It avoids coral reefs and other rough-bottom areas. This shark will not ascend rivers into fresh water.', 'The most abundant shark in the western Atlantic, the sandbar shark is rarely seen at the surface, instead swimming at depths between 60-200 feet. This species can be found over smooth substrates in shallow, coastal waters in tropical and warm temperate regions worldwide. Along the east coast of the United States, the sandbar shark undergoes annual migrations, swimming south in the winter, and heading north again when warmer weather returns. During these migrations, the sharks head to deeper waters – in some cases well over 900 feet (280 m) deep. There, males form large schools and move en masse, while females typically migrate alone. The sandbar shark is an opportunistic feeder, and will consume a variety of prey, including bony fish, smaller sharks, rays, crabs and shrimp.', 'Sandbar-Shark-S.jpeg', 'sandbar-shark', 'This species is an opportunistic feeder preying on bony fishes, smaller sharks, rays, cephalopods, gastropods, crabs and shrimp.', 'Typically, sandbar shark is about 6 feet (2 m) in length and weighs 100 to 200 lbs. (45 to 90 kg). The size record for this species is just over 8 feet (2.5 m) and 260 lbs. (118 kg). Females are usually heavier than males.', 'Sandbar-Shark-L.jpeg', '“Vulnerable” on the IUCN Red List.', 12),
(59, '2022-05-12 23:41:03', '2022-05-12 23:41:03', 'Silky Shark', 'Carcharhinus falciformis', 15, 'Highly migratory species. Found on continental and insular shelves, over deep water reefs and in open ocean, slope and shallow, coastal waters at depths between 59-164 feet (18-50 m). Prefers warmer waters of about 74°F (23°C)', 'The silky shark is one of the most abundant open water shark species. Its genus name, Carcharhinus, is derived from the Greek words “karcharos” (sharpen) and “rhinos” (nose). Size segregation may be present within this species as they have been observed traveling with others of their own size. They are generally solitary but have been known to travel in loose aggregations or groups. And the juveniles primarily travel in groups until sexual maturity, a strategy that is thought to protect them from larger predators. The adults can be social with conspecifics and often intermix with schooling scalloped hammerheads (Sphyrna lewini). Quick-moving and aggressive, they have been observed using threat displays such as a raised head, arched back, and lowered tail. This species transitions between different habitats during various life stages. Juveniles live in nursery grounds, young adults migrate offshore to deeper waters, while adults return seasonally to continental and insular shelf areas. The silky shark is listed as “Vulnerable” on the IUCN Red List and is vulnerable to over-fishing due to its long gestation period, low number of offspring, and slow growth rate. They are often caught as by-catch in tuna fisheries. Their predators include killer whales (orcas), large sharks, and humans. Humans use flesh and fins for food, hide for leather, and the liver for oil. It\'s estimated that the population has decreased by 85% over the course of a 19-year period (1984-2005) and continues to decrease.', 'Silky-Shark-S.jpeg', 'silky-shark', 'Generalist carnivore; diet consists of various species of fish, squid, pelagic crabs, nautilus and chub mackerel. Variation in diet depends on abundance and availability of prey. Opportunistic feeder when prey abundance is low, often consuming a wide variety of prey from different habitats and depths in the open ocean. Juvenile feeds primarily on jumbo squid while adult feeds on red crabs, chub mackerel, yellowfin tuna, albacore, mullet and porcupine fish. Highly migratory species, often following the movements of schooling fish such as tuna.', 'Common length for adult female is 7-7.5 feet (2.1-2.3 m); common length for adult male is 6-7 feet (1.8-2.1 m). Maximum recorded length is 11.5 feet (3.5 m). Maximum recorded weight is 802.4 pounds (364 kg).', 'Silky-Shark-L.jpeg', 'None Found', 12),
(60, '2022-05-16 05:32:20', '2022-05-16 05:32:20', 'ghhhhh', 'Momotus momota', 11, 'ádádd', 'đ', 'SEM1.drawio.png', 'ghhhhh', 'a', 'a', 'SEM1.drawio.png', 'a', 5);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `created_at`, `updated_at`, `name`, `DOB`, `title`) VALUES
(1, NULL, '2022-05-11 01:51:05', 'Đặng Anh Tuấn', '1998-12-17', 'CTV'),
(2, NULL, NULL, 'Nguyễn Minh Hoàng', '1997-12-24', 'CTV'),
(3, NULL, NULL, 'Cao Thái Tuân', '1991-12-24', 'CTV'),
(4, NULL, NULL, 'Nguyễn Quốc Việt', '2003-12-24', 'CTV');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_event` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `details`, `quantity`, `price`, `arrival_date`, `id_user`, `id_event`, `created_at`, `updated_at`) VALUES
(14, 'abcd', 12, 345.00, '2022-05-29', 37, 5, '2022-05-28 01:54:38', '2022-05-28 01:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories_animal`
--

CREATE TABLE `categories_animal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_animal`
--

INSERT INTO `categories_animal` (`id`, `created_at`, `updated_at`, `name`) VALUES
(11, '2022-05-05 01:46:30', '2022-05-05 01:46:30', 'Amphibians'),
(12, '2022-05-05 01:46:37', '2022-05-05 01:46:37', 'Bird'),
(13, '2022-05-05 01:46:42', '2022-05-05 01:46:42', 'Fish'),
(14, '2022-05-05 01:46:53', '2022-05-05 01:46:53', 'Invertebrates'),
(15, '2022-05-05 01:53:00', '2022-05-12 00:57:34', 'Sharks and Rays');

-- --------------------------------------------------------

--
-- Table structure for table `categories_post`
--

CREATE TABLE `categories_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_post`
--

INSERT INTO `categories_post` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2022-05-12 23:42:57', 'Stories'),
(2, NULL, '2022-05-12 23:43:02', 'Press Releases'),
(3, '2022-05-11 07:10:39', '2022-05-12 23:43:06', 'Media');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href_param` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_event_category` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `image`, `start_date`, `end_date`, `price`, `location`, `href_param`, `id_event_category`, `created_at`, `updated_at`) VALUES
(1, 'visits-adults', 'regular tickets for adult visitors', NULL, NULL, NULL, 100.00, NULL, 'visit-adults', 1, NULL, NULL),
(2, 'visits-children', 'regular tickets for children visitors', NULL, NULL, NULL, 50.00, NULL, 'visit-children', 1, NULL, NULL),
(3, 'Camp H2O: July Week 1', 'Backyard Buddies - SOLD OUT Ages: 5 – 7 years old Set out on an expedition to discover the amazing flora and fauna that can be found in your own backyard!  Team up in inquiry based activities to explore all things Georgia, from the Blue Ridge Mountains to the Atlantic Ocean. Learn about the state that Georgia Aquarium calls home with crafts, games, animals, hands-on activities, and meet and greets with animal experts.  By the end of the week, campers will have investigated a variety of Georgia ecosystems and gained the necessary knowledge to be an effective Backyard Buddy!   Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea!', 'event_3.jpeg', '2022-07-13 09:00:00', '2022-07-17 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-july-week-1', 2, '2022-05-15 14:21:10', '2022-05-28 01:41:44'),
(4, 'Camp H2O: July Week 2', 'Backyard Buddies - SOLD OUT Ages: 5 – 7 years old Set out on an expedition to discover the amazing flora and fauna that can be found in your own backyard!  Team up in inquiry based activities to explore all things Georgia, from the Blue Ridge Mountains to the Atlantic Ocean. Learn about the state that Georgia Aquarium calls home with crafts, games, animals, hands-on activities, and meet and greets with animal experts.  By the end of the week, campers will have investigated a variety of Georgia ecosystems and gained the necessary knowledge to be an effective Backyard Buddy!   Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea!', 'event_4.jpeg', '2022-07-20 09:00:00', '2022-07-24 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-july-week-2', 2, '2022-05-15 14:24:42', '2022-05-15 14:24:42'),
(5, 'Camp H2O: July Week 4', 'Campers will spend the week engaged in fun and exciting activities! They will discover interesting facts about our aquatic friends and their habitats, as well as explore the wondrous ocean ecosystem. All Aquarium galleries and presentations are included. Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea!', 'event_5.jpeg', '2022-07-27 09:00:00', '2022-07-31 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-july-week-4', 2, '2022-05-15 14:28:06', '2022-05-15 14:28:06'),
(6, 'Camp H2O: August Week 1', 'Campers will spend the week engaged in fun and exciting activities! They will discover interesting facts about our aquatic friends and their habitats, as well as explore the wondrous ocean ecosystem. All Aquarium galleries and presentations are included. Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea!', 'event_6.jpeg', '2022-08-05 09:00:00', '2022-08-08 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-august-week-1', 2, '2022-05-15 14:30:00', '2022-05-15 14:30:13'),
(7, 'Camp H2O August Week 2', 'Campers will spend the week engaged in fun and exciting activities! They will discover interesting facts about our aquatic friends and their habitats, as well as explore the wondrous ocean ecosystem. All Aquarium galleries and presentations are included. Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea!', 'event_7.jpeg', '2022-08-11 09:00:00', '2022-08-15 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-august-week-2', 2, '2022-05-15 14:32:00', '2022-05-15 14:32:00'),
(8, 'Camp H2O August Week 3', '\"Campers will spend the week engaged in fun and exciting activities! They will discover interesting facts about our aquatic friends and their habitats, as well as explore the wondrous ocean ecosystem. All Aquarium galleries and presentations are included. Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea! \"', 'event_8.jpeg', '2022-08-18 09:00:00', '2022-08-22 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-august-week-3', 2, '2022-05-15 14:33:30', '2022-05-15 14:34:11'),
(9, 'Camp H2O August Week 4', '\"Campers will spend the week engaged in fun and exciting activities! They will discover interesting facts about our aquatic friends and their habitats, as well as explore the wondrous ocean ecosystem. All Aquarium galleries and presentations are included. Junior Aquarist - SOLD OUT Ages: 8 – 10 years old Calling all future marine biologists! Discover how to become junior Georgia Aquarium Aquarist and Researcher through hands-on activities and behind the scenes exploration. Meet with specialists to learn about animal diets and training, field research, veterinary care, scuba diving and water testing. Dive deep into the world of marine science and find out what it takes to work at the largest aquarium in the western hemisphere. If your camper is interested in working at a zoo or aquarium one day, this will be a great introduction to marine biology and a fun new way to see the Aquarium!   Scientists of the Sea Ages: 11 – 13 years old Are you interested in becoming a Scientist of the Sea? Join us as we embark on an adventure that will put you in the shoes of an oceanographer. This week is designed to keep campers engaged with hands-on experiments to educate and inspire kids about marine science!  Activities during this camp will include hydrographic surveying, dissections, and meeting with Georgia Aquarium’s animal ambassadors! Come along with us as we learn more about what it takes to be a Scientist of the Sea! \"', 'event_9.jpeg', '2022-08-25 09:00:00', '2022-08-29 20:00:00', 345.00, 'Nexus Aquarium', 'camp-h2o-august-week-4', 2, '2022-05-15 14:36:08', '2022-05-15 14:36:21'),
(10, 'Mother’s Day', 'This Mother’s Day, treat mom to the ultimate day of fish-filled fun at Georgia Aquarium! On May 8th, between 10:00am and 2:00pm, we’re celebrating by offering free family pictures, a small gift for mom* and magnificent views of our exhibits included with General Admission. Plus, you have the option to purchase our new Brick Art photos by Showtime Pictures. We can’t wait to sea you there!  *Small gift from Dermaglove are available while supplies last', 'event_10.jpeg', '2022-05-08 10:00:00', '2022-05-08 14:00:00', 150.00, 'Oceans Ballroom at Georgia Aquarium', 'mothers-day', 3, '2022-05-15 14:38:04', '2022-05-15 14:38:04'),
(11, 'Spring Hiring Event', 'As the largest aquariums in the western hemisphere, we need exceptionally talented and hardworking team specialists to join our family and help us meet our vision of creating the world’s most engaging aquarium experience.  Positions We’re Hiring For Include:  Guest Programs Specialist ($13.00/hr.) – Provides information about Georgia Aquarium and the exhibits. Guest Services Specialist ($12.00/hr.) – Assist guest with questions, directions, and ticket sales around the entire Georgia Aquarium. Call Center Specialist ($13.00/hr. & hybrid schedule) – Assist guest via telephone with all Georgia Aquarium inquiries.', 'event_11.jpeg', '2022-05-09 13:00:00', '2022-05-09 15:00:00', 120.00, 'Oceans Ballroom at Georgia Aquarium', 'spring-hiring-event', 4, '2022-05-15 14:39:37', '2022-05-15 14:39:37'),
(12, 'Fish & Chips 2022', 'Georgia Aquarium’s 17th annual Fish & Chips Golf Tournament is the continuation of a great tradition. This event, held at Capital City Club, is a major fundraiser for Georgia Aquarium. To date, this event has raised over $2.3 million for education programs.  This money has enabled over 290,000 students attending Title I schools and non-profit organizations to experience the magic of the world’s premier aquarium and has allowed us to improve and expand our educational offerings. Your support helps us guarantee a legacy of awe, wonder and learning for generations to come.  Our sponsors are dedicated to Georgia Aquarium, education and protecting our World Ocean. We hope you will join us on May10th for this year’s event. Golfers interested in participating should reach out to development@georgiaaquarium.org for foursome and player availability and pricing.', 'event_12.jpeg', '2022-05-10 08:00:00', '2022-05-10 16:00:00', 165.00, 'Capital City Club – Crabapple', 'fish--chips-2022', 5, '2022-05-15 14:41:06', '2022-05-15 14:41:06'),
(13, 'Bounce by the Water – Trampoline Cardio', 'Bounce in for the most dynamic workout experience that combines trampoline, traditional barre and kettlebells. This fun and exciting class is a boot camp-style workout that is unlike any other.  Bounce by the Water is the only fitness class in Atlanta with an aquatic view and is led by FUSE Atlanta instructors who teach at all experience levels. Group classes take place in our magnificent Oceans Ballroom, offering incredible views of manta rays and whale sharks while you challenge yourself to learn something new.  Hurry. Space is limited! Tickets are $25 per person and include a 60-minute class and complimentary parking in Georgia Aquarium’s parking garage. Doors open at 6:00pm; class begins at 6:30pm.', 'event_13.jpeg', '2022-05-16 18:30:00', '2022-05-16 19:30:00', 75.00, 'Oceans Ballroom at Georgia Aquarium', 'bounce-by-the-water--trampoline-cardio', 6, '2022-05-15 14:42:27', '2022-05-15 14:42:27'),
(14, 'Sips Under the Sea – Pirate Party', 'Ahoy, me hearties! Who dares climb aboard this vessel and join the creatures akin to Davy Jones himself? We’re setting sail on our greatest adventure yet with Sips Under the Sea: Pirate Party, exclusively for our 21+ guests! Experience exploring our galleries in a more intimate adult setting, stop by the bar to grab a drink, and dance!  Sips Under the Sea is a unique, themed cocktail party exclusively for adults 21 and older. This after-hours event features popular cocktails, dining options, a live DJ, and access to the Aquarium’s main galleries.  Georgia Aquarium no longer requires masks for guests during their visit. Masks are required during Animal Encounter Programs, and will be available at our gate for those who might need one. All Georgia Aquarium team members are encouraged to wear masks during their shift.  Sips Under the Sea - Pirate Party 7', 'event_14.jpeg', '2022-05-13 19:00:00', '2022-05-13 21:00:00', 60.00, 'Nexus Aquarium', 'sips-under-the-sea--pirate-party', 7, '2022-05-15 14:43:50', '2022-05-15 14:43:50'),
(15, 'Countdown to ABPW', 'Georgia Aquarium is proud to host Atlanta Black Pride Weekend (ABPW) as they get ready to start the countdown to their annual pride celebration (August 31- September 6, 2022). Celebrate with us during National Pride Month on June 12th for a feel-good community event. (Please note: this event is for guests 21+).  Guests will arrive at the Oceans Ballroom and then explore the Aquarium galleries featuring diverse collections of aquatic life. Meet your friends and make new ones while exploring the largest aquarium in the Western Hemisphere. After a mesmerizing self-guided journey through the galleries, guests are invited to mix and mingle in one of the most exclusive ballrooms in Atlanta for the After-Party.  Experience genre-bending sound as we bring two of the hottest disc jockeys to unite for a tag-team duo. We welcome two of the country’s leading celebrity DJ’s, the infamous DJ Jash Jay and the pioneering female DJ Mary Mac. We’ll also be joined by Atlanta’s Coco Iman Starr who will serve up a performance to remember.  Be sure to dress to impress – we can’t wait to SEA you there!', 'event_15.jpeg', '2022-06-12 09:00:00', '2022-06-12 15:00:00', 75.00, 'Oceans Ballroom at Georgia Aquarium', 'countdown-to-abpw', 7, '2022-05-15 14:45:28', '2022-05-15 14:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'visits', NULL, NULL),
(2, 'camp', NULL, '2022-05-15 23:06:16'),
(3, 'family event', NULL, NULL),
(4, 'employment opportunity', NULL, NULL),
(5, 'fund-raising event', NULL, NULL),
(6, 'workout event', NULL, NULL),
(7, 'adult-only event', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_feedback_category` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_categories`
--

CREATE TABLE `feedback_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback_categories`
--

INSERT INTO `feedback_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Customer Service', NULL, NULL),
(2, 'Online Experience', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_22_041839_create_categories_animal_table', 2),
(6, '2022_04_22_041944_create_animal_table', 2),
(7, '2022_04_22_053234_create_categories_post_table', 2),
(8, '2022_04_22_053611_create_post_table', 2),
(9, '2022_04_22_144957_add_columns_in_categories_animal', 3),
(10, '2022_04_24_051428_add_columns_in_animal', 4),
(11, '2022_04_25_115721_add_columns_in_posts', 5),
(12, '2022_04_28_035743_create_range_table', 6),
(13, '2022_04_29_040344_create_authors_table', 7),
(14, '2022_05_02_134943_create_rand_backgrounds_table', 8),
(15, '2022_05_06_065952_create_rule_accounts_table', 9),
(16, '2022_05_06_070823_create_accounts_table', 10),
(17, '2022_05_06_071954_create_feedback_categories_table', 11),
(18, '2022_05_06_072101_create_feedback_table', 12),
(19, '2022_05_09_084638_create_event_categories_table', 13),
(20, '2022_05_09_085135_create_events_table', 13),
(21, '2022_05_09_085334_create_bookings_table', 13),
(22, '2022_05_11_101803_add_href_param_column_in_categories_post', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `id_category_post` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `hrefParam` longtext COLLATE utf8mb4_unicode_ci,
  `shortThumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longThumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_author` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `description`, `id_category_post`, `content`, `hrefParam`, `shortThumbnail`, `longThumbnail`, `id_author`) VALUES
(6, '2022-05-12 23:48:45', '2022-05-12 23:48:45', 'Congratulations! It’s a girl…and a boy!', 'Two rescued sea otter pups arrive at Georgia Aquarium', 1, 'ATLANTA (MARCH 27, 2019) – A pair of rescued southern sea otters have made their way to the Western Hemisphere’s largest aquarium after being found stranded near the California coastline. Mara, a female, is approximately ten weeks old and Gibson, a male, is approximately five weeks old. They will stay in a behind-the-scenes area of the Aquarium for the foreseeable future while they acclimate to their new home.\r\n\r\nMara stranded at approximately one week old near Port San Luis in San Luis Obispo County, California on January 17, 2019. She was rescued, and efforts were made to locate her mother albeit unsuccessful. After being cared for at another facility in the Golden State, she was deemed non-releasable by the U.S. Fish and Wildlife Service and the search for a permanent home began.\r\n\r\nGeorgia Aquarium was selected as Mara’s new home due to its ability to care for a young pup who requires round-the-clock care. The Aquarium staff was in California preparing Mara for her trip to Atlanta, when unfortunately, another pup stranded.\r\n\r\nGibson stranded at approximately three weeks old on March 12, 2019 near the Carmel River in California where he was separated from his mother during a large storm. The response team tried to return him to his mother, who was visible and vocalizing, but the storm surge made it near impossible. After those attempts were unsuccessful, the only option for him was euthanasia. Given the Aquarium’s expertise and already planned transport back to Atlanta with Mara, an emergency placement request was made so that Gibson would call Georgia Aquarium home, too.\r\n\r\nIf a permanent home had not been available for either of these pups, they would have been euthanized.\r\n\r\nTo get the pups back to Atlanta as quickly and with as little stress as possible, the animal care and veterinary staff flew them directly from Monterey, California to Atlanta on a private jet. With the otters’ health and wellbeing in mind, the jet was cooled to approximately 60-65 degrees Fahrenheit and supplied with plenty of ice to keep these cold-weather mammals cool.\r\n\r\nOnce they arrived in Atlanta, they were put into a behind-the-scenes area where they will remain while they are under 24-hour watch and care. Mara is currently eating solid fish and swimming on her own, but Gibson, the younger of the two, is still being bottle fed.\r\n\r\nIt’s important for both of them to learn how to be a sea otter, grow, and adjust to their new environment before going on exhibit in the Cold Water Quest gallery with the other resident sea otters, Brighton, Bixby, and Cruz.\r\n\r\nBoth Mara and Gibson will be ambassadors for their endangered species and will provide millions of guests the chance to make a connection and learn more about them. Through this connection, it’s the hope that millions will produce a deeper understanding and respect for these animals and want to preserve their natural environment for years to come. By caring for very young sea otters, we also have the opportunity to learn more about them during these formative years of their development.\r\n\r\nSouthern sea otters are listed as Endangered and are found from the Northern Pacific Ocean to the Southern Bering Sea. They prefer rocky or muddy sea bottoms and kelp forests that are rich in their food of choice: sea urchins. For more information on southern sea otters, visit the Georgia Aquarium Animal Guide.\r\n\r\nKeep up-to-date with Mara and Gibson, their care, and watch them grow by following Georgia Aquarium on Facebook, Twitter, and Instagram. You can see their journey on Animal Planet’s new series, The Aquarium, which will air in late May.\r\n\r\nDownloads: \r\nFor photos of Gibson and Mara, click here.\r\nFor b-roll of sea otters in California and Gibson and Mara’s journey to Atlanta click here.\r\n\r\n###\r\n\r\nABOUT GEORGIA AQUARIUM\r\nGeorgia Aquarium is a leading 501(c)(3) non-profit organization located in Atlanta, Ga. that is Humane Certified by American Humane and accredited by the Alliance of Marine Mammal Parks and Aquariums and the Association of Zoos and Aquariums. Georgia Aquarium is committed to working on behalf of all marine life through education, preservation, exceptional animal care, and research across the globe. Georgia Aquarium continues its mission each day to inspire, educate, and entertain its millions of guests about the aquatic biodiversity throughout the world through its hundreds of exhibits and tens of thousands of animals across its seven major galleries. \r\nFor more information, visit georgiaaquarium.org', 'congratulations-its-a-girland-a-boy', 'post1-cat1-S.jpeg', 'post1-cat1-L.jpeg', 4),
(7, '2022-05-12 23:51:20', '2022-05-28 00:58:21', 'We Will Miss You, Oz', 'This feature highlights the importance of sea otters in reducing carbon emissions and how guests can help protect the environment with Greener Life® from Georgia Natural Gas.', 1, 'On Thursday afternoon we had to say goodbye to one of our beloved Southern sea otters, Oz. He was 18-years-old and one of the first sea otters to come to Georgia Aquarium in 2005. His health and quality of life rapidly declined following several unexpected seizures earlier in the week and the difficult decision to humanely euthanize him was made.\r\n\r\nGeorgia Aquarium animal care teams and veterinary staff stayed by his side 24 hours a day following his seizures and a MRI was conducted at a partner veterinary facility to try and determine the cause. Oz was a senior otter and had begun showing signs of decreased mobility and potential arthritis, but nothing more severe prior to this week.\r\n\r\nOz was the oldest sea otter at Georgia Aquarium and came to Atlanta in 2005 with fellow sea otter, Gracie who died in 2017 at 19 years old. Oz was a companion to our other three otters, Brighton, Bixby, and Cruz.\r\n\r\nHe will be remembered by his trainers for his gentleness, charm, and playful nature. Guests and staff alike could find him snuggled in the rockwork of the sea otter exhibit or enjoying enrichment items. He will be remembered by the millions of guests, staff, and volunteers he made connections with over his lifetime.\r\n\r\nOz came to Georgia Aquarium from the Oregon Zoo and was an ambassador for this endangered species and touched the lives of everyone that met him. Oz lived a long and loved life and we have been honored to care and learn from him for close to two decades.\r\n\r\nOz will be deeply missed.\r\n\r\nSea otters are currently “Endangered” on the International Union for Conservation of Nature (IUCN) Red Listand face threats such as entanglement in fishing nets, oil spills, and shark attacks. Sea otters’ life span is estimated to be 15 to 20 years for females and 10 to 15 years for males in human care. The average lifespan is approximately 10 to 12 years in their natural habitat. To learn more about southern sea otters and how to preserve this incredible species, please visit Georgia Aquarium’s Animal Guide.', 'we-will-miss-you-oz', 'post2-cat1-S.jpeg', 'post2-cat1-L.jpeg', 1),
(8, '2022-05-12 23:53:13', '2022-05-12 23:53:13', 'Get to Know Our Vet Techs', 'This feature highlights the importance of sea otters in reducing carbon emissions and how guests can help protect the environment with Greener Life® from Georgia Natural Gas.', 1, 'Laura Hill\r\n\r\nHow long have you been working at Georgia Aquarium?\r\n\r\nI will have worked at Georgia Aquarium for three years in January 2022.\r\n\r\nWhat inspired you to choose animal health as a career path?\r\n\r\nI have had a love for animals since before I was walking. My mother was a nurse, and healthcare was not an uncommon subject around the house. I used to give my teddy bears shots and even wrap their arms with bandages. I truly believe this field chose me.\r\n\r\nWhat are your career goals?\r\n\r\nScience and medicine are constantly changing, with new studies and information being uncovered every day. I would love to continue learning about all the unique and diverse animals at the Aquarium while keeping up with the best advances in medicine to help them thrive.\r\n\r\nIf someone is interested in becoming a vet tech, what steps should they take and what advice can you give?\r\n\r\nI suggest starting small to see if animal medicine is the right career path for you. When I started as a kennel tech at 16-years-old, I was told this job isn’t just about playing with puppies and kittens all day. While people often see the cool and interactive parts of this job, there is a lot of hard work that goes on behind the scenes. I highly recommend working at a general practice veterinary clinic or volunteering at a zoo or aquarium if that’s the area of your interest. Get your toes wet before diving in.\r\n\r\nWhat is your daily job routine like?\r\n\r\nRoutine? What routine?\r\n\r\nI think one of the most exciting parts of this job is that we don’t typically have a routine. We are constantly adjusting to meet the needs of our patients. In a single day we could run bloodwork; do an exam; and treat a penguin, a shark, a turtle, a stingray, and a dolphin – sometimes treating multiple animals at the same time. We do schedule routine/annual exams and bloodwork for our animals.\r\n\r\nWhat is your favorite part about your job?\r\n\r\nSeeing healthy and happy animals. It’s always nice seeing a previously ill animal fully heal and return to its daily routine knowing I had a part in its recovery.\r\n\r\nWhat is the most interesting thing you have learned or seen as a vet tech at the Aquarium?\r\n\r\nI had no idea that sharks and stingrays can be trained.\r\n\r\nIt blows my mind to watch our aquarists target train animals in our large Ocean Voyager exhibit. Seeing how those animals know to come to specific targets is incredible and allows us to get a better visual during exams. These training techniques have become a crucial element in our animal care. We have a penguin who is learning to stand in place to get her x-rays taken, while our otters know how to hold out their arms for blood pressure measurements. Just to name a few of the many amazing things our teams do working with animals to remove any stress during veterinary exams.\r\n\r\nWhat is your favorite animal at the Aquarium?\r\n\r\nWe have some many incredible animals I can’t pick just one! When I first started, I would have said sea otters, but now I love the seals, spotted eagle rays, belugas, penguins, and tiger sharks.', 'get-to-know-our-vet-techs', 'post3-cat1-S.jpeg', 'post3-cat1-L.jpeg', 2),
(9, '2022-05-12 23:54:23', '2022-05-12 23:54:23', 'New Chair of the Board for Association of Zoos and Aquariums', 'This feature highlights the importance of sea otters in reducing carbon emissions and how guests can help protect the environment with Greener Life® from Georgia Natural Gas.', 1, 'SILVER SPRING, Md. – The Association of Zoos and Aquariums (AZA) is announcing the swearing-in of Dr. Brian Davis, President and CEO of Georgia Aquarium, as the new Chair of the AZA Board of Directors.\r\n\r\n“I have known Brian for several years. His impressive accomplishments and the high regard in which he is held across the accredited aquarium and zoo community speak to his many talents. The AZA community is poised to benefit from his leadership and vision as he assumes the chair of the AZA Board of Directors,” said Dan Ashe, President, and CEO of AZA. “Brian is AZA’s first Black chair and he was central to crafting AZA’s newest promise, focused on advancing diversity, equity, access, and inclusion within the zoological profession. DEIA issues are close to his heart, and I know he will deliver on that pledge.”\r\n\r\nAs Chair of the Board, Davis, along with three other executive officers and nine board members, will be involved in every aspect of the national organization, including accreditation, ethics, animal welfare, and conservation.\r\n\r\nEach year, AZA’s 241 accredited facilities collectively contribute $230 million solely to field conservation projects that help to protect species here at home and across the world, placing collectively among the world’s largest conservation investors. These facilities collectively serve more than 200 million visitors annually and more than 50 million of those guests are children, making accredited zoos and aquariums essential to science and environmental education. AZA-accredited facilities are also pillars in their local communities and powerful economic drivers, contributing billions to the U.S. economy and supporting thousands of jobs.\r\n\r\n“Being appointed to the role of Chair means the world to me,” said Davis. “We have a commitment to ensure that every guest who visits our facilities, walks away with respect to care for our planet and its animals. With 241 AZA-accredited facilities working together we can educate and inspire the next generation of leaders in animal welfare. I am proud to be a part of leading us down the exciting road ahead and hope to use the next year to make us stronger, more united, and more diversified.”\r\n\r\nDavis was named President and CEO of Georgia Aquarium in January of 2020 and has been part of the organization since 2003. Previously, Davis served as the Aquarium’s Director of Education before becoming Vice President of Education. He rejoined the Aquarium in 2018, after holding the position of President and CEO at Maritime Aquarium at Norwalk in Connecticut.\r\n\r\nDavis manages the daily operations of Georgia Aquarium, the largest aquarium facility in the Western Hemisphere. In addition, Davis oversees all facets of the Aquarium’s global reach efforts for aquatic conservation and research.\r\n\r\nDavis holds a Bachelor of Science degree from Rutgers University, a Masters of Education and Ph.D. in secondary science education from Georgia State University.\r\n\r\nIn addition to having more than 25 years of experience in senior leadership roles within zoological and educational institutions, Davis also spent time developing education programs at both New York Aquarium and Zoo Atlanta. He has also authored, and co-authored, papers related to science education, aquariums, and other science related topics and previously served on the Board of Directors for the AZA.\r\n\r\nABOUT GEORGIA AQUARIUM\r\n\r\nGeorgia Aquarium is a leading 501(c)(3) non-profit organization located in Atlanta, Ga. that is Humane Certified by American Humane and accredited by the Alliance of Marine Mammal Parks and Aquariums and the Association of Zoos and Aquariums. Georgia Aquarium is committed to working on behalf of all marine life through education, preservation, exceptional animal care, and research across the globe. Georgia Aquarium continues its mission each day to inspire, educate, and entertain its millions of guests about the aquatic biodiversity throughout the world through its hundreds of exhibits and tens of thousands of animals across its seven major galleries. For more information, visit georgiaaquarium.org\r\n\r\nABOUT AZA\r\n\r\nFounded in 1924, the Association of Zoos and Aquariums is a nonprofit organization dedicated to the advancement of zoos and aquariums in the areas of conservation, animal welfare, education, science, and recreation. AZA is the accrediting body for the top zoos and aquariums in the United States and eleven other countries. Look for the AZA accreditation logo whenever you visit a zoo or aquarium as your assurance that you are supporting a facility dedicated to providing excellent care for animals, a great experience for you, and a better future for all living things. The AZA is a leader in saving species and your link to helping animals all over the world. To learn more, visit www.aza.org.', 'new-chair-of-the-board-for-association-of-zoos-and-aquariums', 'post4-cat1-S.jpeg', 'post4-cat1-L.jpeg', 1),
(10, '2022-05-13 00:10:30', '2022-05-13 00:10:30', 'Nexus                                   Aquarium Improves Security with Evolv Technology', 'Two rescued sea otter pups arrive at Georgia Aquarium', 2, 'WALTHAM, Mass. – (Oct. 27, 2021) – Georgia Aquarium has partnered with Evolv Technology (NASDAQ: EVLV), a  leader in weapons detection screening, to improve weapons detection and the overall guest experience by using Evolv Express®, Evolv’s award-winning screening solution, at the largest aquarium in the United States. As a result of the partnership, the Aquarium has seen a 15% increase in guest experience scores, while shrinking the security system lobby footprint by 50% and reallocating half of security staff to areas other than the entrance.\r\n\r\n“The health and safety of our guests and employees has always been our top priority and using Evolv Express® at our entrances has allowed us to significantly enhance the overall guest experience at the Aquarium without compromising on or sacrificing security,” said Anthony Rivera, senior vice president of hospitality and operations at Georgia Aquarium.\r\n\r\nEvolv Express® leverages Evolv Cortex AITM, its best-in-class artificial intelligence (AI) weapons detection algorithms to instantly detect and identify a person carrying a weapon without slowing the flow of visitors carrying their personal items, improving security at the speed and scale required to stay ahead of today’s threats. This reduces unsafe crowding, lowers the risk for human error, and removes the tradeoff between keeping a venue safe and providing a good experience for visitors.\r\n\r\nEvolv’s systems have been used to screen more than 100 million people in the U.S., second only to the Department of Homeland Security’s Transportation Security Administration (TSA). Evolv Express® is 10 times faster than traditional metal detectors, resulting in screening an unparalleled 3,600 people per hour, per system. The world’s most iconic venues and companies place their trust in Evolv to protect their employees and visitors, including Uber, Lincoln Center, L.L. Bean, Six Flags, and hundreds of others.\r\n\r\n“As venues like Georgia Aquarium begin to welcome their visitors back, it’s critical that the guest experience also adapts to the touchless, frictionless systems we have come to expect during the pandemic,” said Peter George, CEO at Evolv. “We are delighted to be partnering with Georgia Aquarium as part of our mission to transform security to enhance everyone’s life.”\r\n\r\nThe screening system is currently in place at each guest entrance of the Aquarium. Guests will not have to stop, empty their pockets, or have their bags checked unless directed by security.\r\n\r\nFor more information about the Georgia Aquarium’s use of Evolv Express, or to see a demo, visit our website.\r\n\r\nAbout Georgia Aquarium\r\n\r\nGeorgia Aquarium is a leading 501(c)(3) non-profit organization located in Atlanta, Ga. that is Certified Humane by the American Humane Association and accredited by the Alliance of Marine Mammal Parks and Aquariums and the Association of Zoos and Aquariums. Georgia Aquarium is committed to working on behalf of all marine life through education, preservation, exceptional animal care, and research across the globe. Georgia Aquarium continues its mission each day to inspire, educate, and entertain its millions of guests about the aquatic biodiversity throughout the world through its hundreds of exhibits and tens of thousands of animals across its seven major galleries. For more information, visit www.georgiaaquarium.org.\r\n\r\nAbout Evolv Technology\r\n\r\nEvolv Technology (NASDAQ: EVLV) is a leader in weapons detection for security screening, securing the world’s most iconic venues and companies. Its mission is enabling a better experience and better security for venues, creating a safer world to work, learn, and play by transforming physical security to make everywhere safer. It gives sports fans, theme park visitors, concertgoers, shoppers, employees, students, and others peace of mind so that they can gather without fear of violence. Its security screening has scanned more than 100 million people, second only to the Department of Homeland Security’s Transportation Security Administration (TSA) in the United States, and its technology combines powerful, advanced sensors with proven artificial intelligence (AI), security ecosystem integrations, and comprehensive venue analytics to reliably detect threats 10 times faster than traditional metal detectors.\r\n\r\nEvolv Technology, Evolv Express®, Evolv Insights™, and Evolv Cortex AI™ are registered trademarks or trademarks of Evolv Technologies, Inc. in the United States and other jurisdictions.\r\n\r\nFor more information, visit our website.\r\n\r\nForward-looking Statements \r\n\r\nCertain statements in this press release may constitute “forward-looking” statements and information, within the meaning of Section 27A of the Securities Act of 1933, Section 21E of the Securities Exchange Act of 1934, and the safe harbor provisions of the U.S. Private Securities Litigation Reform Act of 1995 that relate to our current expectations and views of future events. All statements other than statements of historical facts contained in this press release, including statements regarding the potential of the Evolv Express® security system are forward-looking statements. These statements involve known and unknown risks, uncertainties and other important factors that may cause our actual results, performance, or achievements to be materially different from any future results, performance or achievements expressed or implied by the forward-looking statements.  In some cases, these forward-looking statements can be identified by words or phrases such as “may,” “will,” “expect,” “should,” “could,” “anticipate,” “aim,” “estimate,” “intend,” “plan,” “believe,” “potential,” “continue,” “is/are likely to” or the negative of these terms or other similar expressions.\r\n\r\n \r\n\r\nThese forward-looking statements are subject to risks, uncertainties, and assumptions, some of which are beyond our control. In addition, these forward-looking statements reflect our current views with respect to future events or our Company’s performance and are not a guarantee of future performance. Actual outcomes may differ materially from the information contained in the forward-looking statements as a result of a number of factors, including, without limitation the risk factors set forth under the caption “Risk Factors” in our proxy statement/prospectus, filed with the Securities and Exchange Commission (the “SEC”) on June 28, 2021, as updated by the risk factors disclosed in the section titled “Risk Factors” in our Form 8-K, filed with the SEC on July 22, 2021, and in our other documents filed with or furnished to the SEC.\r\n\r\nThese statements reflect management’s current expectations regarding future events and operating performance and speak only as of the date of this press release. You should not put undue reliance on any forward-looking statements. Although we believe that the expectations reflected in the forward-looking statements are reasonable, we cannot guarantee that future results, levels of activity, performance and events and circumstances reflected in the forward-looking statements will be achieved or will occur. Except as required by law, we undertake no obligation to update or revise publicly any forward-looking statements, whether as a result of new information, future events or otherwise, after the date on which the statements are made or to reflect the occurrence of unanticipated events.', 'georgia-aquarium-improves-security-with-evolv-technology', 'post1-cat2-S.jpeg', 'post1-cat2-L.jpeg', 3),
(11, '2022-05-13 00:12:56', '2022-05-13 00:12:56', 'Work continues for the conservation of Whale Sharks in the Galapagos Islands after a decade since the creation of the project', 'Photo Credit: Wildlife Photographer, Russell E. Train Fellow', 2, 'team of scientists from the Galapagos Whale Shark Project (GWSP), the Galapagos National Park Directorate (DPNG) and the Georgia Aquarium (GA) embarked upon a second annual expedition to Darwin Island on the week of the 9th of September. The expedition goal was to carry out field work for the long term study on the unique grouping of whale sharks sighted passing by seasonally in the waters of the far northern region of the Galapagos Archipelago.\r\n\r\nThe Galapagos Whale Shark Project cofounded by Dr Alex Hearn and Jonathan R Green a decade ago has been working to better understand the movement ecology and reproductive biology of female adult whale sharks sighted in greater numbers in the Galapagos than anywhere else in the world. Since the beginning of the project the scientists from the GWSP have carried out ground breaking science for the conservation of this endangered species, working in collaboration with multiple organizations and expert scientists from around the world.\r\n\r\nThis year, the team, reduced to small numbers due to continued impact of the COVID-19 pandemic for travel and global collaborations, was made up of five members from the abovementioned organizations.\r\n\r\nDuring a week of work they carried out various field methods to gather data that will continue to shed light on the remaining mysteries of this species. During this expedition the main activities carried out were photo-ID of four whale sharks, satellite tagging (SPLASH tags) of four sharks, tagging with animal-bourne video cameras (CATS) of one shark and sampling of the microbiome of two of the sharks.\r\n\r\nThe data from the photo-ID and the satellite tagging provides information of estimates on population size, residency indexes, mortality, and allows for both passive and active tracking of the animals, respectively. The satellite tagging also provides information on the activities Galapagos Whale Shark Project Press Release Image 1. A satellite tag placed on the dorsal fin of an whale shark. ©Sofía M Green performed by the whale sharks underwater, giving insight about their diving behaviour and habitat preference and use in the water column.\r\n\r\nMeanwhile, the animal-bourne video cameras allow a visual insight of their movements underwater and any possible interactions with other individuals both inter- and intra-specific in areas not easily observed by the human eye, while also avoiding any change in behaviour that may occur from human presence. The camera’s also have inbuilt accelerometers which allow fine scale resolution data collection of their movements in different planes during various activities such as foraging, navigating, diving, and more.\r\n\r\nThe microbiome samples serve for innovative research which is looking at the role of bodyassociated microbiomes in determining elasmobranch health and how the unique microbiome might be involved in host immunity, nutrition, disease and waste- processing.\r\n\r\nThis year the Galapagos Whale Shark Project team reports a low frequency of whale shark sightings which are probably influenced by the fluctuation of sea surface temperatures (SSTs) due to climatic patterns such as the warming of waters with El Niño Southern Oscillation (ENSO) and the cooling counter event of La Niña. Specifically in 2021 NOAA reports a neutral climate state with “near to below average” SST’s with a 70-80% chance of La Niña during the northern hemisphere winter 2021-22.\r\n\r\nJonathan R Green states “The lower SSTs in April and May brought early sightings of whale sharks but in June and July temperatures again rose with a corresponding decrease in numbers and frequency of sightings from reports from the dive Masters, visiting divers, [and our team].” With climate change it is predicted that the Oceanic phenomena’s such as El Niño and la Niña will occur with higher frequencies and thus it is probable that this will affect the regularity with which whale sharks are sighted in their known aggregation locations. The shift in seasonal sightings and possibly also location of sightings make it more complicated to apply proper measures of management for the conservation of this species. The impact of climate change on this species is uncertain and is being considered in current and future studies.\r\n\r\nThe GWSP would like to thank the Galapagos National Park Directorate (DPNG), the Georgia Aquarium (GA), the Galapagos Science Center (GSC), the Galapagos Conservation Trust (GCT), the World Wildlife Fund (WWF), Save Our Seas Foundation (SOSF) and Galapagos Shark Diving (GSD) for their funding and/or support in this project.\r\n\r\nFor further information:\r\n\r\ngalapagoswhalesharkproject@gmail.com\r\n\r\nwww.galapagoswhaleshark.org', 'work-continues-for-the-conservation-of-whale-sharks-in-the-galapagos-islands-after-a-decade-since-the-creation-of-the-project', 'post2-cat2-S.jpeg', 'post2-cat2-L.jpeg', 3),
(12, '2022-05-13 00:16:12', '2022-05-13 00:16:12', 'Dr. Gregory D. Bossart Memorial One Health Scholarship', 'Funded by Georgia Aquarium, Administered by the One Health Commission', 2, 'A $5,000 USD Dr. Greg Bossart Memorial Scholarship is available to a graduate student in wildlife biology, epidemiology, veterinary, medical, public health, basic or social sciences or other post-graduate program focusing on the interconnection between people, animals, plants, and their shared environment using a One Health framework. Funds will be awarded in November 2021.\r\n \r\nGreg Bossart, VMD, Ph.D. was a highly respected veterinarian, pathologist, and conservationist committed to advancing the understanding of marine mammals as sentinels of ocean and human health. With a career spanning 30 years and over 200 publications, Dr. Bossart identified resurgent and emerging diseases in dolphins, manatees, birds, and whales. His research and innovative techniques helped characterize the first viral diseases in manatees and he was responsible for developing the first immunohistochemical technique for diagnosing brevetoxicosis (red tide poisoning) in both marine mammals and birds.\r\n \r\nDr. Bossart was a dedicated proponent of the One Health concept and approach which was a prominent theme in his long-running Atlantic bottlenose dolphin Health and Environmental Risk Assessment (HERA) project. Started in 2003, HERA was developed to monitor how dolphin health in coastal habitats is impacted by environmental stressors and how those stressors potentially also impact human health. His contributions to the study of marine mammal health are far-reaching, and through this scholarship, Georgia Aquarium is committed to honoring Dr. Bossart\'s One Health legacy.\r\n \r\nEligibility & Requirements\r\n \r\nApplicant must be a student currently registered in a post-graduate program (toward MSc, PhD, DVM, MPH, MD, or equivalent, clinical or research degrees) and working on a project that encompasses the One Health model and/or addresses a One Health topic.\r\nFunds can be used to support research or educational costs (tuition, fieldwork supplies, analytical costs, conference travel, etc.) and should be outlined in the application materials.\r\n \r\nHow to Apply\r\n \r\n﻿Interested applicants should submit (as a single pdf packet):\r\nA Project Narrative (not to exceed 1500 words) that includes: Abstract, Background / Introduction, Project Goals, Methods, Importance/Contribution, How the proposed work fits within the One Health framework, Use of funds\r\nA current CV.\r\nA letter from the graduate program that the student has been accepted into or is enrolled in demonstrating their good standing\r\nOne letter of recommendation from a faculty member or clinician who is familiar with the student’s work.', 'dr-gregory-d-bossart-memorial-one-health-scholarship', 'post3-cat2-S.jpeg', 'post3-cat2-L.jpeg', 4),
(13, '2022-05-13 00:17:22', '2022-05-13 00:17:22', 'Aggressor Adventures and Georgia Aquarium Partner to Offer Ocean Science Leadership Program', 'Two rescued sea otter pups arrive at Georgia Aquarium', 3, 'Through a collaboration with Georgia Aquarium, Aggressor Adventures® announces today its first ever Ocean Science Leadership Program. The program offers young marine professionals the opportunity of a lifetime by providing an experiential learning opportunity for individuals working towards a career in the industry.\r\n\r\n \r\n\r\nAccredited zoos and aquariums around the country generate significant economic benefits locally, regionally and nationally. According to the Association of Zoos and Aquariums (AZA), the 215 AZA-accredited zoos and aquariums in the U.S. serve more than 183 million annual visitors and support over 212,000 jobs, generating $24 billion in the total value of goods and services generated directly and indirectly.\r\n\r\n \r\n\r\nOnce identified, the winning Ocean Science Leadership Program young professional will have the opportunity to experience a fully comped Aggressor Adventures liveaboard scuba diving trip in 2022. While on board, the young professional will work closely with  a Georgia Aquarium expert for on-site education sessions and will work with the Aggressor team to earn an advanced dive certification.\r\n\r\n \r\n\r\n“The Ocean Science Leadership Program will offer a deserving young professional the opportunity of a lifetime to gain first-hand experience while traveling with Aggressor. As a trusted travel brand, we’ve relied on the beauty of the natural world to provide our guests with unforgettable adventures,” says Wayne Brown, CEO of Aggressor Adventures. “This is our opportunity to give back to the industry and foster the next generation of marine science professionals who are incredibly valuable to our business and maintaining the beauty of the natural world.”\r\n\r\n \r\n\r\nTo be considered for the leadership program, the young professional must currently live in the United States and have a degree in ecology, biology, zoology, environmental management, conservation or related discipline from a four-year college or university. Stand-out candidates will currently be enrolled in or will have recently completed an internship program at an aquarium, dive center, zoo, or wildlife conservation center. Applicants are required to submit an 800-word essay on a list of predetermined marine science-related topics. Additional details and requirements can be found here:\r\n\r\nOcean Science Leadership Program\r\n\r\n“Our partnership with Aggressor Adventures through the Ocean Science Leadership Program is a real example of our mission in action,” said Dr. Alistair Dove, vice president of science and education at Georgia Aquarium. “We want to be a valuable educational resource for budding aquatic researchers and provide them with hands-on experiences with the ocean and Aquarium researchers through Aggressor’s world-renowned liveaboard charters.”\r\n\r\nAbout Aggressor Adventures\r\n\r\nSince 1984, Aggressor Adventures® has offered travelers liveaboard scuba and snorkeling charters, luxury river cruises and exotic wildlife safaris. Worldwide locations the company explores include Bahamas, Belize, Cayman Islands, Cocos Island, Costa Rica, Cuba, Dominican Republic, Egypt, Galapagos, Hawaii, Indonesia, Maldives, Mexico, Oman, Philippines, Palau, Red Sea, Roatan, Sri Lanka, Sudan, Thailand, and Turks and Caicos. The company’s Clean, Refresh, Sanitize safety standards are industry leading. For more information, visit www.aggressor.com or call (800) 348-2628 or (706) 993-2531.\r\n\r\n \r\n\r\nAbout Georgia Aquarium\r\n\r\nGeorgia Aquarium is a leading 501(c)(3) non-profit organization located in Atlanta, Ga. that is Certified Humane by the American Humane Association and accredited by the Alliance of Marine Mammal Parks and Aquariums and the Association of Zoos and Aquariums. Georgia Aquarium is committed to working on behalf of all marine life through education, preservation, exceptional animal care, and research across the globe. Georgia Aquarium continues its mission each day to inspire, educate, and entertain its millions of guests about the aquatic biodiversity throughout the world through its hundreds of exhibits and tens of thousands of animals across its nine major galleries. For more information, visit www.georgiaaquarium.org.', 'aggressor-adventures-and-georgia-aquarium-partner-to-offer-ocean-science-leadership-program', 'post1-cat3-S.jpeg', 'post1-cat3-L.jpeg', 1),
(14, '2022-05-13 00:19:02', '2022-05-13 00:19:02', 'Animal Planet Greenlights Second Season of \"The Aquarium\"', 'Two rescued sea otter pups arrive at Georgia Aquarium', 3, 'Animal Planet announced today it has greenlit THE AQUARIUM Season Two.  The series, which documents the daily behind the scenes at Georgia Aquarium in addition to the vital role it plays in aquatic conservation around the world, premiered on May 19 to nearly one million viewers. THE AQUARIUM focuses on the stories of the thousands of special animals who call the 10 million gallons of water at the Atlanta-based aquarium home; the bonds the animals share with the staff who dedicate their lives and careers to their care; and Georgia Aquarium’s global conservation efforts.\r\n\r\nThis season THE AQUARIUM followed the aquarium’s biologists, researchers and aquarists during their fascinating day-to-day activities. Audiences were introduced to an array of animals with memorable stories, including southern sea otter pups, Mara and Gibson, who were rescued from the California coast; African penguins Charlie and Lizzie, who have been together for 25 years; a very curious rescued green sea turtle named Tank; and a plethora of other animals that reside at the aquarium including jellies and piranhas. The staffers also traveled to Cape Town, South Africa to help rehabilitate African penguins and assist in the release of a group of these penguins back into the wild. \r\n\r\nTHE AQUARIUM is Animal Planet’s highest-rated freshmen series for 2019 to date* among Adults 25-54, in addition to also being the second highest-rated freshmen series in two years, second to CRIKEY! IT’S THE IRWINS (2018-2019) and third to THE ZOO (2017). U.S audiences can stream all episodes of THE AQUARIUM in their entirety on the Animal Planet GO app.\r\n\r\nTHE AQUARIUM is produced for Animal Planet by Left/Right, a Red Arrow Studios company, and Copper Pot Pictures. Banks Tarver, Ken Druckerman, Anneka Jones and Michael LaHaie are the executive producers; Jessie Findlay is co-executive producer for Left/Right. David LaMattina and Chad Walker are the executive producers for Copper Pot Pictures. Lisa Lucas is the executive producer for Animal Planet, with Patrick Keegan as supervising producer.', 'animal-planet-greenlights-second-season-of-the-aquarium', 'post2-cat3-S.jpeg', 'post2-cat3-L.jpeg', 2),
(15, '2022-05-13 00:22:23', '2022-05-13 00:22:23', 'Georgia Aquarium Partners with Georgia Natural Gas® to Launch a New Interactive Element in Its Southern Sea Otter Exhibit', 'This feature highlights the importance of sea otters in reducing carbon emissions and how guests can help protect the environment with Greener Life® from Georgia Natural Gas.', 3, 'November 15, 2021 (ATLANTA) - Nexus Aquarium has partnered with Nexus Natural Gas (NNG) to add a new interactive element in its southern sea otter exhibit. This innovative feature will include two interactive games that teach visitors the important role southern sea otters play in reducing carbon emissions while also learning how guests can help protect the environment by making their natural gas usage carbon neutral with the Greener Life® program from NNG.\r\n\r\n \r\n\r\nThrough these two interactive games, Georgia Aquarium guests can learn about this important ecological connection in a fun and engaging way. Guests can challenge themselves or go head-to-head with another player as they attempt to earn as many carbon offsets as possible by collecting sea urchins or knocking out carbon emissions within a time limit to save the kelp.\r\n\r\n \r\n\r\nKelp is a seaweed that thrives in cool coastal waters worldwide, often in groups called kelp forests. Kelp use photosynthesis to turn carbon dioxide (CO₂) into biomass and can naturally reduce a substantial amount of carbon emissions. Kelp is anchored to the seafloor by a root-like structure called a holdfast. A large population of sea urchins can decimate a kelp forest by eating the holdfasts. By hunting sea urchins, sea otters keep the population in check – and in turn the kelp forests can thrive and continue to reduce carbon emissions through photosynthesis. Sea otters are considered a keystone species because of their role in keeping this underwater ecosystem in balance.\r\n\r\n \r\n\r\n“We are always looking for innovative ways to reduce our environmental impact and to share that message with our guests,” said Michael Lewis, vice president of exhibits and projects at Georgia Aquarium. “This new interactive feature gives us the opportunity to educate guests on the importance of reducing carbon emissions in an engaging way. Working with Georgia Natural Gas to create this exhibit for our guests was a simple choice for us since we already partner with them to reduce our own emissions footprint using GNG’s Greener Life for Business program. Combining our message of promoting the conservation of wildlife species with the protection of our planet has given our guests a fun, hands-on addition to our popular sea otter exhibit.”\r\n\r\n \r\n\r\n“Georgia Natural Gas is keenly focused on helping our customers reduce their carbon footprint, which is why we make it simple for them to offset emissions from their natural gas use with Greener Life,” said John Jamieson, vice president of retail operations at GNG. “Educating the public about the important role sea otters also play in reducing emissions by sponsoring this new exhibit at Georgia Aquarium is a natural extension of our work. We hope visitors will enjoy the exhibit and join us in the important work of protecting our environment.\"\"\r\n\r\n \r\n\r\nThe Greener Life program is an optional product from GNG that helps its consumers do their part for the environment and reduce their carbon emissions footprint. For all those participating, GNG uses Environmental Protection Agency standards to calculate the amount of greenhouse gases released into the atmosphere from customers’ use of natural gas. GNG then purchases and retires carbon offsets to balance the impact of those customers’ emissions. The greenhouse gas emissions being offset by the Greener Life program are those associated with the combustion of natural gas at the point of consumption only, and do not include lifecycle emission that occur during extraction, production, or delivery.\r\n\r\n \r\n\r\nVisit Georgia Aquarium to check out this new interactive installation in their southern sea otter exhibit and to learn more about the importance of reducing carbon emissions and protecting this crucial species. Residential consumers looking to lessen their environmental impact can visit gng.com/greenerlife.', 'georgia-aquarium-partners-with-georgia-natural-gas-to-launch-a-new-interactive-element-in-its-southern-sea-otter-exhibit', 'post3-cat3-S.jpeg', 'post3-cat3-L.jpeg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rand_backgrounds`
--

CREATE TABLE `rand_backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rand_backgrounds`
--

INSERT INTO `rand_backgrounds` (`id`, `created_at`, `updated_at`, `name`) VALUES
(8, '2022-05-21 21:16:52', '2022-05-21 21:16:52', 'booter-img 3.jpeg'),
(9, '2022-05-21 21:16:59', '2022-05-21 21:16:59', 'booter-img 4.jpeg'),
(10, '2022-05-21 21:17:05', '2022-05-21 21:17:05', 'booter-img 6.jpeg'),
(11, '2022-05-21 21:17:12', '2022-05-21 21:17:12', 'booter-img 7.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `ranges`
--

CREATE TABLE `ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranges`
--

INSERT INTO `ranges` (`id`, `created_at`, `updated_at`, `name`) VALUES
(5, '2022-05-05 01:54:21', '2022-05-12 01:42:35', 'North America'),
(6, '2022-05-05 01:54:38', '2022-05-05 01:54:38', 'South America'),
(7, '2022-05-05 01:55:28', '2022-05-05 01:55:28', 'Africa'),
(8, '2022-05-05 01:57:15', '2022-05-05 01:57:15', 'Antarctica'),
(9, '2022-05-05 01:57:21', '2022-05-05 01:57:21', 'Australia'),
(10, '2022-05-05 01:57:26', '2022-05-05 01:57:26', 'Europe'),
(11, '2022-05-05 01:57:34', '2022-05-05 01:57:34', 'Arctic Ocean'),
(12, '2022-05-05 01:57:40', '2022-05-05 01:57:40', 'Atlantic Ocean'),
(14, '2022-05-05 01:57:56', '2022-05-05 01:57:56', 'Pacific Ocean'),
(15, '2022-05-05 01:58:02', '2022-05-05 01:58:02', 'Southern Ocean'),
(16, '2022-05-05 01:58:08', '2022-05-05 01:58:08', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `rule_account`
--

CREATE TABLE `rule_account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rule_account`
--

INSERT INTO `rule_account` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`),
  ADD KEY `accounts_id_rule_user_foreign` (`id_rule_user`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id_category_foreign` (`id_category`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_id_user_foreign` (`id_user`),
  ADD KEY `bookings_id_event_foreign` (`id_event`);

--
-- Indexes for table `categories_animal`
--
ALTER TABLE `categories_animal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_post`
--
ALTER TABLE `categories_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_id_event_category_foreign` (`id_event_category`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_id_feedback_category_foreign` (`id_feedback_category`),
  ADD KEY `feedbacks_id_user_foreign` (`id_user`);

--
-- Indexes for table `feedback_categories`
--
ALTER TABLE `feedback_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id_category_post_foreign` (`id_category_post`);

--
-- Indexes for table `rand_backgrounds`
--
ALTER TABLE `rand_backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranges`
--
ALTER TABLE `ranges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rule_account`
--
ALTER TABLE `rule_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories_animal`
--
ALTER TABLE `categories_animal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories_post`
--
ALTER TABLE `categories_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_categories`
--
ALTER TABLE `feedback_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rand_backgrounds`
--
ALTER TABLE `rand_backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ranges`
--
ALTER TABLE `ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rule_account`
--
ALTER TABLE `rule_account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_id_rule_user_foreign` FOREIGN KEY (`id_rule_user`) REFERENCES `rule_account` (`id`);

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories_animal` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_id_event_foreign` FOREIGN KEY (`id_event`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `bookings_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_id_event_category_foreign` FOREIGN KEY (`id_event_category`) REFERENCES `event_categories` (`id`);

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_id_feedback_category_foreign` FOREIGN KEY (`id_feedback_category`) REFERENCES `feedback_categories` (`id`),
  ADD CONSTRAINT `feedbacks_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_id_category_post_foreign` FOREIGN KEY (`id_category_post`) REFERENCES `categories_post` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
