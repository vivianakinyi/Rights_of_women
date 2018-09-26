-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2014 at 08:34 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `women_rights`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(255) NOT NULL AUTO_INCREMENT,
  `post_id` int(255) NOT NULL,
  `body` text,
  `author` varchar(32) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `body`, `author`, `date`) VALUES
(1, 1, 'Hello there this is my first comment', 'Alvin', '2014-03-08 23:15:48'),
(2, 2, 'Ges what..this is my second comment!!', 'Viv', '2014-03-08 23:15:56'),
(3, 1, 'tatata testing comments!!', 'Vivianne', NULL),
(4, 1, 'Finally working', 'Vivianne', NULL),
(5, 2, 'Hey there mys second comment', 'Vin', NULL),
(6, 1, 'Gotcha!', 'Valereen', '2014-03-09 21:38:28'),
(7, 1, '', '', '2014-03-11 21:16:57'),
(8, 1, 'Waat this is awesome', 'Fifi', '2014-03-11 21:22:59'),
(9, 1, 'Are you working', 'Fifi', '2014-03-11 21:24:22'),
(10, 1, 'My my.. fifi you are a genius :)', 'Allan', '2014-03-11 21:26:15'),
(11, 2, 'Post a valide thing please', 'Fifi', '2014-03-11 21:29:19'),
(12, 1, '', 'wow, this is great fifi. am prou', '2014-03-11 23:45:21'),
(13, 1, 'blah blah blahh', 'sha', '2014-03-13 23:07:57'),
(14, 3, 'It depends whether or not you can afford a lawyer. ', 'Barry', '2014-03-14 21:09:55'),
(15, 1, 'yeah..', 'Addah', '2014-03-16 20:17:51'),
(16, 4, 'Men mjisort', 'Vivian', '2014-03-16 20:28:08'),
(17, 4, 'Men are not prone to abuse..', 'Barry', '2014-03-19 16:40:35'),
(18, 6, 'Hallo Agnes,\r\nWe note that you didn’t indicate to us under what type of marriage you and your husband got married under, so as to enable us advise you appropriately on the applicable grounds for divorce under such a marriage. The main types of marriage recognized under the Kenyan Law include Statutory, Customary, Islamic and Hindu.\r\nA wedding performed in church, at the D.C office or at the Registrar of Marriages (Attorney General’s chambers) is called a statutory marriage and a certificate of marriage is issued upon the conclusion of such a ceremony. Under Customary marriages, the law allows for marriages under the various customary practices, whereas when a couple gets married under the Islamic or Hindu Law such a marriage is known as Islamic or Hindu Marriage respectively.\r\n\r\nUnder Statutory marriage the grounds for seeking a divorce include: cruelty, desertion, adultery and insanity. The court can only grant a divorce after three years of marriage under statutory marriage. Under customary marriage the grounds include adultery desertion, witchcraft, impotence, cruelty and incest.\r\n\r\nUnder the Islamic and Hindu law, the grounds for divorce are as stated in the Quran and Hindu Law respectively. The law provides that the grounds on which one seeks a divorce must be proved to the court before the court can pronounce a divorce.\r\nIn regard to your query, you can only be granted a divorce in court under the above mentioned grounds, depending on the type of marriage you are married under. If the court discovers that a party seeking a divorce has condoned (where you know your partner is doing a wrong and not taken any action), connived (when you arrange with your partner to commit the act for which you seek a divorce) or colluded with the other party in a marriage it may refuse to grant a divorce.', 'Lawyer  Alice', '2014-03-20 16:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `economic_rights`
--

CREATE TABLE IF NOT EXISTS `economic_rights` (
  `econ_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `interpretation` text,
  PRIMARY KEY (`econ_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `economic_rights`
--

INSERT INTO `economic_rights` (`econ_id`, `title`, `content`, `interpretation`) VALUES
(1, 'Economic Rights', 'The state shall adopt and enforce legislative and other measures to\r\nguarantee women equal opportunities in work and career advancement.\r\n( Article 13) In this respect, the state shall promote equality in access to employment,\r\nthe right to equal remuneration for jobs of equal value for women and\r\nmen, and adequate and paid pre and post- natal maternity leave in both\r\nprivate and public sectors, introduce minimum age for work to avoid\r\nexploitation of children, especially the girl child, and other measures\r\naimed at providing a work environment which treats men and women\r\nequally ', NULL),
(2, 'Women’s right to property', 'Article 40.(1) Subject to Article 65, every person has the right, either individually\r\nor in association with others, to acquire and own property–– (a) of any\r\ndescription; and (b) in any part of Kenya.', 'You can now own property:\r\n Have it registered in your name or in joint names.\r\n Have full possession of it.\r\nBe able to get a loan using it.\r\n Derive livelihood from it.\r\n Inherit it or give it out to whomever you want.\r\n Manage and sell off the property.\r\nIf someone denies you this right, you can go to court and claim the actualisation of this right'),
(3, 'Married Women Property Act (MWPA) 1882.', 'The effect of this Act is that, for example, a married woman can retain ownership of property\r\nwhich she might have received as a gift from a parent, unlike before when a woman’s property\r\nautomatically became her husband’s upon marriage.', NULL),
(4, 'Women and Land rights', 'Article 60 (1) provides for the principles of land policy which include the elimination of gender discrimination in law, customs and practices related to land and property in land and eliminates gender discrimination in relation to land and property and gives everyone, including women, the right to inheritance and unbiased access to land.', NULL),
(5, 'Matrimonial Property rights', ' Article 68(c)(iii) of the Constitution, Parliament shall enact legislation to\r\nregulate the recognition and protection of matrimonial property and in particular, the\r\nmatrimonial home during and on termination of the marriage.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `question`, `answer`) VALUES
(1, 'How can I access help in case of domestic violence?', 'There are so many palces once can acces help incase of domestic violence.For instance the police.These are the first people one should seek assistance.Then...'),
(2, 'Do you offer pro bono services', 'Yes we do.However, we look at various issues before we can offer pro bono services.some of the things we look at is....'),
(3, 'How can I get a link to other oranizations?', 'Simply click on the links that we have provided in order to connect to organisations taht can help.'),
(4, 'How is property shared in a polygamous marriage?', 'In a polygamous marriage, when the man dies, the property is to be divided according to\r\nthe number of wives or ‘houses’ and depends on the number of children per house. Every\r\nsurviving wife is considered to be an extra unit to the number of children in the household.\r\nIt does not matter whether the children are female or male.'),
(5, 'What happens to property inheritance when there are no children within a marriage?', 'Section 36 provides that when a spouse dies and had no child with the surviving spouse, the\r\nspouse is only entitled to the first Kshs 10,000 or twenty percent of the residue of the net\r\nintestate estate and a life interest in the whole reminder, so long as in the case of women,\r\nshe remains unmarried.');

-- --------------------------------------------------------

--
-- Table structure for table `fgm`
--

CREATE TABLE IF NOT EXISTS `fgm` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fgm`
--

INSERT INTO `fgm` (`f_id`, `r_id`, `title`, `content`) VALUES
(1, 0, '', 'article about fgm.\r\n'),
(2, 0, '', 'more info about fgm'),
(3, 1, '1', 'article about fgm.\r\n'),
(4, 2, '1', 'more info about fgm');

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE IF NOT EXISTS `health` (
  `h-id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`h-id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`h-id`, `title`, `content`) VALUES
(1, 'Rights to Health', 'Article 43(1) safeguards the economic and social rights of women and provides that\r\nevery person has a right to the highest attainable standard of health which includes\r\nthe right to healthcare services, including reproductive healthcare.');

-- --------------------------------------------------------

--
-- Table structure for table `health_rights`
--

CREATE TABLE IF NOT EXISTS `health_rights` (
  `health_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `interpretation` text,
  PRIMARY KEY (`health_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `health_rights`
--

INSERT INTO `health_rights` (`health_id`, `title`, `content`, `interpretation`) VALUES
(1, 'Right to Health', 'Article 43(1) safeguards the economic and social rights of women and provides that\r\nevery person has a right to the highest attainable standard of health which includes\r\nthe right to healthcare services, including reproductive healthcare.', 'When in need of health care, you will be able to access it and to the\r\nhighest level you require.\r\nThe State should enable you access good standard of health care,\r\nwhenever you are sick and need emergency treatment, you should not\r\nbe turned away especially at private clinics which might ask for money\r\nbefore they accept to treat you.\r\nYou will also get treatment and health care services for reproductive\r\nhealth needs. Many times as a woman you might have pregnancy related complications, reproductive organs ailments and for all these, the State\r\nis supposed to enable you access health services.'),
(2, 'Health and reproductive rights', '(Article 14(1))-Ensuring respect and promotion of women’s right to health, including sexual and reproductive health, which includes the right to control fertility, the right to decide whether to have children, the number and\r\nspacing of the children, right to choose any method of contraceptive.\r\nFurther, the right to self-protection and to be protected against sexually\r\ntransmitted infections , including HIV/AIDS and the right to be informed\r\non one’s health status and on the health status of one’s partner,\r\nparticularly if affected with sexually transmitted diseases including HIV/\r\nAIDS in accordance with international best practices, and the right to\r\nfamily planning education ', 'The World Health Organisation\r\ndefines sexual and\r\nreproductive health (SRH)\r\nis a state of complete physical,\r\nmental and social wellbeing\r\nand not merely the\r\nabsence of disease or infirmity, in all matters\r\nrelated to the reproductive system\r\nand its functions and processes. Reproductive\r\nhealth therefore implies that men\r\nand women have a satisfying and safe\r\nsex life, the capability to reproduce, freedom\r\nto decide if, when, and how often to\r\nhave children, information and access to\r\nsafe, effective, affordable and acceptable\r\nmethods of family planning, methods to\r\nregulate their fertility, and right of access\r\nto appropriate health care services.\r\nAccess to sexual and reproductive health\r\nis a key element to the fight against poverty.\r\nIt contributes to economic growth,\r\nsocietal equity, gender equality and democratic\r\ngovernance, thus bringing tremendous\r\nbenefits to women, families and\r\nsocieties. It is instrumental in achieving\r\nsustainable development which is critical\r\nfor the achievement of Millennium Development\r\nGoal 5 on maternal health, and\r\nthe reduction of poverty and hunger, increasing\r\nchildren’s health, combating HIV\r\n& AIDS and other communicable diseases,\r\nand achieving gender equality.'),
(3, 'Maternal Health', 'Article 14(2)-Access to adequate, affordable and accessible health services, pre-natal,delivery and post-natal health and nutritional services for women during\r\npregnancy and while breast feeding. It also provides for protection of\r\nthe reproductive rights of women by authorizing medical abortion in\r\ncases of sexual assault, rape, incest and where the continued pregnancy\r\nendangers the mental and physical health of the mother or the life of\r\nthe mother or foetus ', NULL),
(4, 'Nutrition', ' ( Article 15)Right to food and security, including access to clean drinking water,\r\nsources of domestic fuel, land, and the means of producing nutritious\r\nfood', 'Be free from hunger, and to have adequate food of acceptable quality;\r\n? As a citizen of Kenya, you should be enabled to access food and of acceptable\r\nquality, meaning clean, not intoxicated, not spoilt due to overstaying or\r\npoor condition of storage.\r\n? You should be able to have an environment secure for you so that you can\r\nwork and sustain yourself. For example, if you trade at the market and\r\nneed to wake up so early to get fresher items, your security should be given\r\nby the government.\r\n? Your trade licence processes should not be tedious so as to keep you off\r\ntrade.\r\n? When you cannot afford food at all, the state should give you food.\r\nRight to clean and safe water in adequate quantities;\r\n? Water is one of the basic rights which have been recognised by the\r\nconstitution.\r\n? As a woman, access to clean and safe water has been a problem for many\r\nwomen who have to use water to feed their family.\r\n? As a great consumer and user of water for your children, yourself, children\r\nand family in general, it means that the government has to ensure that you\r\nget clean and enough water.\r\n? You have the right to demand for the water to be brought near you, to be\r\nclean, and enough for your use including, cleaning, drinking, washing etc.'),
(5, 'Nutrition', ' ( Article 15)Right to food and security, including access to clean drinking water,\r\nsources of domestic fuel, land, and the means of producing nutritious\r\nfood', 'Be free from hunger, and to have adequate food of acceptable quality;\r\n As a citizen of Kenya, you should be enabled to access food and of acceptable\r\nquality, meaning clean, not intoxicated, not spoilt due to overstaying or\r\npoor condition of storage.\r\n You should be able to have an environment secure for you so that you can\r\nwork and sustain yourself. For example, if you trade at the market and\r\nneed to wake up so early to get fresher items, your security should be given\r\nby the government.\r\n Your trade licence processes should not be tedious so as to keep you off\r\ntrade.\r\n When you cannot afford food at all, the state should give you food.\r\nRight to clean and safe water in adequate quantities;\r\n Water is one of the basic rights which have been recognised by the\r\nconstitution.\r\n As a woman, access to clean and safe water has been a problem for many\r\nwomen who have to use water to feed their family.\r\n As a great consumer and user of water for your children, yourself, children\r\nand family in general, it means that the government has to ensure that you\r\nget clean and enough water.\r\n You have the right to demand for the water to be brought near you, to be\r\nclean, and enough for your use including, cleaning, drinking, washing etc.'),
(6, 'Right to a healthy and sustainable environment ', '( Article 18) states that every woman has a right to a healthy and sustainable environment ', 'Accessible and adequate housing, and to reasonable standards of sanitation:\r\n You should now be able to live in a dignified manner:\r\n Have a reasonably sized house where you and your family can fit in\r\nacceptable social norms.\r\n While adequate is debatable, the house should at least be one where\r\nparents and children live in separate rooms and also boys separate from\r\ngirls.\r\n The place you live should be hygienic, e.g. have toilets, bathrooms with a\r\nsewage system to avoid health complications.'),
(7, 'Protection from harmful cultural practices eg FGM', 'Article 2(4) states that any law, including customary law that is inconsistent with\r\nthe Constitution is void to the extent of the inconsistency, and any act or omission\r\nin contravention of the Constitution is invalid. This provision protects women from\r\nharmful cultural practices such as FGM/C, early marriage, widow cleansing, forced\r\nevictions, widow inheritance and dispossession of land.', NULL),
(8, 'Prohibition of Female Genital Mutilation Act, 2011', 'The Female Genital Mutilation Act makes it illegal to practice\r\nfemale circumcision, procure the services of a circumciser, or send\r\nsomebody out of the country to undergo female genital mutilation.\r\nOffenders under this Act will serve up to 7 years in prison and be\r\nliable for payment of fines of up to Sh500, 000. Further, a person\r\nwill be liable to a sentence of life imprisonment for causing a\r\ndeath in the process of carrying out FGM/C. In addition, providing\r\npremises for the purposes of carrying out FGM/C, possession of\r\ntools associated with FGM/C or failure to report an incident of\r\nFGM/C knowingly are also punishable by law. The Act provides\r\nfor the constitution of an implementation board to coordinate\r\nimplementation activities of the Act.', NULL),
(9, 'The HIV Prevention and Control Act, 2006', 'The objective of this Act is to provide measures for the prevention,\r\nmanagement and control of HIV and AIDS. The Act creates public\r\nawareness on causes, modes of transmission, consequences and\r\nmeans of prevention and control of HIV and AIDS. It protects the\r\nrights of those that are infected and affected by HIV/AIDs and\r\noutlaws discrimination in all its forms against persons living with\r\nHIV and AIDS or those perceived or suspected to have HIV/AIDS.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `political_rights`
--

CREATE TABLE IF NOT EXISTS `political_rights` (
  `political_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `interpretation` text,
  PRIMARY KEY (`political_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `political_rights`
--

INSERT INTO `political_rights` (`political_id`, `title`, `content`, `interpretation`) VALUES
(1, 'Representation', 'The Constitution puts in place measures that will ensure women are able to actively\r\nparticipate in the political space by increasing the representation of women. Article\r\n27(8) of the Constitution places an obligation on the State to put in place legislative\r\nand other measures to implement the principle that no more than two thirds of the members of elective or appointive members shall be of the same gender.\r\nThis is further emphasized in Article 81(b), which provides that the electoral system\r\nshall comply with the principle that not more than two thirds of members of elective\r\npublic office shall be of the same gender. Further, in relation to principles of devolved\r\ngovernment and representation in county assemblies, the same two-thirds principle\r\nis echoed in Articles 175(c), 177(1)(b) and 197(1).', NULL),
(2, 'Legislature and Composition of parliament', 'Article 97(1) (b) provides that 47 elective seats in the National Assembly shall be\r\nreserved for women; Article 98(1)(b) reserves 16 seats in the Senate for women\r\nmembers who shall be nominated by the political parties. Article 98 further ensures\r\nthat seats in the senate are reserved for youth and persons with disability and that\r\nsuch seats are equally filled by men and women. Article 100 places responsibility\r\non parliament to promote the representation of women in parliament by enacting\r\nlegislation to safeguard that right.', NULL),
(3, 'Representation of The People', 'Article 81(b) states that not more than two-thirds of the members of elective public\r\nbodies shall be of the same gender;', 'The constitution expects women to also be leaders in the country.\r\nAs a woman you can now be able to be in positions of governance in various\r\ncapacities and in a number of ways than before as follows;\r\n1. Being elected in an elective position\r\n2. Of being a representative at any level\r\n3. Of being represented by a woman – who will understand your plight\r\nbetter.\r\n4. Being appointed or nominated.\r\nThis will ensure that young women and girls will now grow up seeing women\r\nas leaders and will desire and endeavour to take up such positions.\r\nIf for any reason, you end up with an elective body in the coming general\r\nelections whose number of men are more than 2/3 of the total number, run to\r\ncourt; such a body will not have been constituted according to the constitution.\r\nAs a woman you have a right to elect, or vie in any elective posts to ensure\r\nwomen do not make less than one-third in any representative posts.'),
(4, 'Article 91 Political Parties', 'Article 91 (f) respect and promote human rights and fundamental freedoms,\r\nand gender equality and equity;', 'Political parties are the major vehicle you can use to be elected or nominated\r\nin any elective posts.\r\n Do not fear engaging with it and the political party should not make you\r\nfear politics anymore.\r\n They will not ignore you and are now required to respect, ensure women’s\r\nparticipation and they have to show that they do not have men who are more\r\nthan 2/3 of the total members.\r\n This means that women have a good opportunity of being at least more\r\nthan 1/3 of the members.'),
(5, 'Article 90 Allocation of party list seats', '90(2)(b) except in the case of the seats provided for under Article 98\r\n(1) (b), each party list comprises the appropriate number of qualified\r\ncandidates and alternates between male and female candidates in the\r\npriority in which they are listed;', 'The political parties will give to the Independent Election and Boundaries\r\nCommission (IEBC) names of the candidates they will to nominate before\r\nthe elections.\r\n As a woman you must ensure that you belong to a political party and be an\r\nactive member.\r\n When your political party submits names for nominations, the list will be\r\nin an order that alternates between woman and man. Like a zebra!\r\nThe Political Party Act and Elections Act are in place and as a woman\r\nyou need to understand what these laws say when it comes to the role of\r\npolitical party and the IEBC in ensuring that women are elected.\r\n Use the laws to engage your political party to nominate women. Ensure that\r\nyour political party has the list which has both women and man (women as\r\nthe odd number), that way there will be more seats for women.\r\n You now stand a better chance of being nominated by political parties and\r\nparticipating in leadership.'),
(6, 'Devolved Government', '177(1)(b) the number of special seat members necessary to ensure\r\nthat no more than two-thirds of the membership of the assembly\r\nare of the same gender;\r\n197. (1) Not more than two-thirds of the members of any county\r\nassembly or county executive committee shall be of the same gender.', 'The power and resources are localized, women are always on the ground,\r\nand now you have the government at that level.\r\n This means that the national budgets are brought closer to you: a minimum\r\nof 15 % of the national budget will now be allocated to the Counties and\r\nyou have a right to demand social accountability from all the government\r\noffices at your country on how they use this money.\r\n As a woman, ensure that you are vigilant at the County when it comes to\r\nequity, and that all bodies at the Counties including the Assembly and the\r\nexecutive will have to have at least more than 1/3 women.\r\n You are entitled to run your own affairs at the County as well as prioritise\r\nyour agenda, projects and generally be part of decision-making at your\r\ncounty.\r\n You also have a right to demand for faster and better quality services from\r\nthe County Government.'),
(7, 'Commissions and Independent Offices', 'Article 250(11) states that the chairperson and vice-chairperson of a commission shall\r\nnot be of the same gender.', 'There are several Constitutional Commissions that have been established.\r\nEach of them will have at least 3 but not more than 9 commissioners.\r\n? The Commissions will have to ensure that the affirmative action principle\r\nis followed. As women you have opportunities to be in these commissions\r\nand at least have sizeable numbers of not less than 1/3.\r\n Remember that you have a good chance of becoming the chairperson or\r\nthe vice if the chairperson is a man.\r\n If a body, an organ, department or the State itself is leaving you out as a\r\nwoman, denying you food, accessible health, housing, water, leadership or\r\ngenerally treating you as if you are not an equal citizen of Kenya, you have\r\nevery right to go to court and demand for equal treatment.'),
(8, 'Commissions and Independent Offices', 'Article 250(11) states that the chairperson and vice-chairperson of a commission shall\r\nnot be of the same gender.', 'There are several Constitutional Commissions that have been established.\r\nEach of them will have at least 3 but not more than 9 commissioners.\r\n The Commissions will have to ensure that the affirmative action principle\r\nis followed. As women you have opportunities to be in these commissions\r\nand at least have sizeable numbers of not less than 1/3.\r\n Remember that you have a good chance of becoming the chairperson or\r\nthe vice if the chairperson is a man.\r\n If a body, an organ, department or the State itself is leaving you out as a\r\nwoman, denying you food, accessible health, housing, water, leadership or\r\ngenerally treating you as if you are not an equal citizen of Kenya, you have\r\nevery right to go to court and demand for equal treatment.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `body` text,
  `author` varchar(32) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `body`, `author`, `date`) VALUES
(1, 'First post', 'This is my first post in rights of women', 'Vivian', '2014-03-08 11:42:36'),
(2, 'Second post', 'This is my second post in the rights of women', 'Akinyo', '2014-03-08 11:42:36'),
(3, 'Pro bono Lawyers', 'I want to know if I can get a pro bono lawyer even though I can afford to have one..Please answer', 'Lady in Distress', NULL),
(4, 'What about Rights of Women', 'I want to say this is a nice information system but what about men.', 'Barry', '2014-03-16 20:27:35'),
(5, 'I need an out-of-court settlemen', 'We were married in a church wedding nine years ago in Nairobi.At the time of marriage,I had a daughter with another man whom my husband dutifully caters for.We had a son three years ago before we mutually agreed that I resign from work and take care of the kids.However, of late ,he has turned abusive and comes back home drunk way past midnight.I am contemplating opting out.Can this matter be settled out of court?How can the court assist in maintenance.', 'Patricia', '2014-03-17 20:12:27'),
(6, 'Divorce ', 'I have been married for 8 years and I seem to have grown out of love. My husband is a very nice guy and all ladies seem to be attracted to him apart from me. Kindly advice if there is any way I can divorce him. All the grounds for divorce don’t seem to apply on him: adultery, cruelty, desertion etc I just don’t feel the chill any more.', 'Agnes from Limuru', '2014-03-20 16:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `reproductive`
--

CREATE TABLE IF NOT EXISTS `reproductive` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `content` text,
  `h_id` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reproductive`
--

INSERT INTO `reproductive` (`r_id`, `title`, `content`, `h_id`) VALUES
(1, 'Reproductive Rights', '(Article 14(1))Ensuring respect and promotion of women’s right to health, including sexual and reproductive health, which includes the right to control fertility, the right to decide whether to have children, the number and\r\nspacing of the children, right to choose any method of contraceptive.\r\nFurther, the right to self-protection and to be protected against sexually\r\ntransmitted infections , including HIV/AIDS and the right to be informed\r\non one’s health status and on the health status of one’s partner,\r\nparticularly if affected with sexually transmitted diseases including HIV/\r\nAIDS in accordance with international best practices, and the right to\r\nfamily planning education ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `website_name` varchar(35) NOT NULL,
  `url` varchar(35) NOT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `website_name`, `url`) VALUES
(1, 'FIDA', 'http://www.fidaKenya.org'),
(2, 'EISIL', 'http://www.eisil.org');

-- --------------------------------------------------------

--
-- Table structure for table `social_rights`
--

CREATE TABLE IF NOT EXISTS `social_rights` (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `interpretation` longtext,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `social_rights`
--

INSERT INTO `social_rights` (`social_id`, `title`, `content`, `interpretation`) VALUES
(1, 'Gender Equality and non-discrimination', 'Article 27 (3): Women and men have the right to equal treatment,\r\nincluding the right to equal opportunities in political, economic,\r\ncultural and social spheres.\r\n\r\n', 'What does this mean?\r\na)No one should discriminate against you just because you are different\r\nfrom them in respect of: race, sex, pregnancy, marital status, health status,\r\nethnic or social origin, colour, age, disability, religion, conscience, belief,\r\nculture, dress, language or birth.\r\nYou should be treated equally and given all the chances and opportunities\r\nyou need even if you are different.\r\nb) As a woman, you can now enjoy “full and equal enjoyment” of all rights and\r\nfreedoms the same way as a man. You should never be denied a right because\r\nyou are a woman. For example your girl child should be given equal right to\r\neducation and to even study medicine, or join the military just as a boy gets.\r\nc) As a woman, the equality you should experience will be in all spheres in\r\nthe political field: standing for elections and getting an equal chance to be\r\nnominated and elected without violence.\r\nd) In the economic sector when you apply for a job, you should get it if you\r\nqualify, whether you are pregnant or not. You should also get equal salary\r\nto a man doing the same work.\r\ne)Do not allow culture and traditions be used against your daughter or\r\nson. For example, by allowing your girl child go through early childhood\r\nmarriage, Female Genital Mutilation (FGM) among others.\r\nf) In social spheres you are entitled to access all areas and public venues and\r\nnot stopped just because you are a woman, e.g. If there is a social hall at your\r\ncounty, you too can hold your functions there or attend events in such halls.\r\ng) You should also be able to join any social club, union, network that you\r\nqualify as a member and not be denied just because you are a woman.\r\n'),
(2, 'Gender Equality', '27(8) ... State shall take legislative and other measures to implement\r\nthe principle that not more than two-thirds of the members of\r\nelective or appointive bodies shall be of the same gender.', 'The constitution demands that the implementation of the constitution by\r\nthe government should ensure that women are included and that men do\r\nnot exceed 2/3 of any appointive or elective body, be it at the ward level,\r\ncountry, national Parliament or any other appointive or nominations by any\r\narms of the government.'),
(3, 'Violence against women', 'The inclusion of provisions in the Constitution that safeguard\r\nwomen’s rights and protect them from violations. The Bill of Rights\r\ncontains progressive provisions that protect women from human\r\nrights violations including Article 27 which provides for equality\r\nand freedom from discrimination including equality before the\r\nlaw and Article 50(7) which allows evidence to be provided by an\r\nintermediary. This is also provided under the Sexual Offences Act.\r\nArticle 50(8) provides for protection of witnesses or vulnerable\r\npersons, Article 50(9) protects the rights and welfare of victims of\r\noffences and Article 43(1)(a) safeguards reproductive health rights\r\nof women.', NULL),
(4, 'Early marriage', 'Often linked to FGM/C, girls under the age of eighteen years are often forced into early\r\nmarriage after completing the right to passage of adulthood. The marriage often\r\nhappens before the girl’s body is mature in terms of reproduction, and is in violation\r\nof the Children’s Act which makes it an offence to subject a person under the age of\r\neighteen to marriage (section 14).', NULL),
(5, 'Sexual Offences Act', 'The Task Force on the Implementation of the Sexual Offences Act was\r\nestablished by the Attorney General on March 16th 2007 to oversee the\r\nimplementation of the Sexual Offence Act. The Task Force’s responsibility\r\nis to develop and oversee inter-sectoral implantation and administration of\r\nthe Sexual offences Act and other existing laws and policies, regulations and\r\ncustoms. The task force is also responsible for overseeing all research, public\r\neducation and sensitization campaigns necessary to fulfill its mandate and\r\npromote the objectives of the Sexual Offences Act.', 'a. The Sexual Offences Act consolidated and revised provisions\r\nrelating to sexual and gender based violence which were\r\npreviously contained in various laws.\r\nb.Sexual crimes are no longer categorized as crimes against\r\nmorality, but as crimes of violence.\r\nc. New crimes such as sexual assault, gang rape, child trafficking,\r\nintentional transmissions of HIV and other life threatening\r\nconditions.\r\nd. The Act is gender neutral, men and boys can be victims and\r\nfemales can be perpetrators.\r\ne. The Act establishes minimum sentences for some of the most\r\nserious sexual offences.'),
(7, 'freedom and security of a woman', 'Article 29 states Every person has the right to freedom and security of the person, which\r\nincludes the right not to be—\r\n(c) subjected to any form of violence from either public or private sources;\r\n(d) subjected to torture in any manner, whether physical or psychological;\r\n(e) subjected to corporal punishment; or\r\n(f) treated or punished in a cruel, inhuman or degrading manner', 'What it means\r\n You as a woman should not be violated – the constitution protects you from\r\nviolence. And violence of any kind against you is prohibited. This violence\r\nincludes that which is directed at you and keeps you away from leadership,\r\ngovernance, development and denies you equal participation platform.\r\n\r\n When you report any violence act at the Police Station, you got aright as a\r\nKenyan citizen to be heard and your case taken seriously, And police have\r\nthe right to act on issues of violence against women without trivialising\r\nand terming them as mambo ya nyumbani!\r\n\r\nWhenever anybody violates you, report, and you should never be turned\r\naway and told that it was in private or that the issue is domestic.'),
(8, 'Family relations and marriage rights', 'Article 45. (1) The family is the natural and fundamental unit of society and\r\nthe necessary basis of social order, and shall enjoy the recognition\r\nand protection of the State.\r\n(3) Parties to a marriage are entitled to equal rights at the time of the\r\nmarriage, during the marriage and at the dissolution of the marriage.\r\n(4) Parliament shall enact legislation that recognises—\r\n(a) marriages concluded under any tradition, or system of religious,\r\npersonal or family law; and\r\n(b) any system of personal and family law under any tradition, or\r\nadhered to by persons professing a particular religion, to the extent\r\nthat any such marriages or systems of law are consistent with this\r\nConstitution.', 'What this means!\r\n You and your husband are guaranteed equal rights in your marriage.\r\nYou will for example have same rights with your husband to your children’s\r\ncustody all the time of the marriage, even at dissolution.\r\n Though you and your husband will have different and distinct roles and\r\nresponsibilities, he will not be a more superior being to you within the setup\r\nof your marriage.\r\n If you are married under the customary law, do not worry, there will be a\r\nlaw recognising your marriage.\r\n Your customary marriage will be formalised and upon the death of your\r\nhusband your in laws will not descend on you claiming you are not a legal\r\nwife.'),
(9, 'Article 53: Parental responsibility', '53(e) to parental care and protection, which includes equal\r\nresponsibility of the mother and father to provide for the child,\r\nwhether they are married to each other or not;', 'Both you and the father to your children have equal responsibility to take care of your children. You will, share responsibility and it will no\r\nlonger be your sole burden to care and provide\r\n Whether you marry the father to your child(ren) or not, he is responsible\r\nto provide for the child as well.'),
(10, 'Rights relating to marriage ( Articles 6-7)', 'a.Minimum age of marriage set at 18 years\r\nb. Monogamy encouraged as a preferred form of marriage and the\r\nrights of women in marriage and family, including polygamous marital\r\nrelationships, are promoted and protected\r\nc. The right to acquire, administer and manage property freely\r\nd. Protection of women during separation, divorce or annulment of\r\nmarriage', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email_address` varchar(35) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `password`, `email_address`) VALUES
(1, 'vivian', 'akinyi', 'viv', '3b6fd1b3ca4936df4452f53f55f7959c', ''),
(2, 'valereen', 'kotia', 'val', '3a6d0284e743dc4a9b86f97d6dd1a3bf', ''),
(3, 'Alvin', 'Omondi', 'Debouy', 'b67c2e9b0ea5017635d0b7707d31ed1d', 'debouy@gmail.com');
