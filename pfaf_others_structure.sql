-- phpMyAdmin SQL Dump
-- 
-- Structure de la table `Booklist`
-- 

DROP TABLE IF EXISTS `Booklist`;
CREATE TABLE IF NOT EXISTS `Booklist` (
  `Number` int(11) NOT NULL,
  `Title` tinytext,
  `Author` tinytext,
  `Rating` tinyint(4) default NULL,
  `In stock` tinyint(4) default NULL,
  `Comments` tinytext,
  `Publisher` tinytext,
  `Date of publication` smallint(6) default NULL,
  `ISBN` tinytext,
  `PullOut` tinyint(4) default NULL,
  PRIMARY KEY  (`Number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Composition`
-- 

DROP TABLE IF EXISTS `Composition`;
CREATE TABLE IF NOT EXISTS `Composition` (
  `Latin Name` tinytext NOT NULL,
  `Common Name` tinytext,
  `Part of plant` tinytext NOT NULL,
  `Dry or Fresh weight` tinytext,
  `Water` float default NULL,
  `Calories` float default NULL,
  `Protein` float default NULL,
  `Fat` float default NULL,
  `Carbohydrate` float default NULL,
  `Fibre` float default NULL,
  `Ash` float default NULL,
  `Calcium` float default NULL,
  `Phosphorus` float default NULL,
  `Iron` float default NULL,
  `Magnesium` float default NULL,
  `Sodium` float default NULL,
  `Potassium` float default NULL,
  `Zinc` float default NULL,
  `VitaminA` float default NULL,
  `Thiamine` float default NULL,
  `Riboflavin` float default NULL,
  `Niacin` float default NULL,
  `VitaminC` float default NULL,
  `VitaminB6` float default NULL,
  `Source` tinytext,
  `Notes` tinytext,
  PRIMARY KEY  (`Latin Name`(150),`Part of plant`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Cultivars`
-- 

DROP TABLE IF EXISTS `Cultivars`;
CREATE TABLE IF NOT EXISTS `Cultivars` (
  `Latin Name` tinytext NOT NULL,
  `Cultivar` tinytext NOT NULL,
  `Notes on cultivar` text,
  `Synonyms` tinytext,
  `Pull out` tinyint(4) default NULL,
  `Record checked` tinyint(4) default NULL,
  `Last update` datetime default NULL,
  PRIMARY KEY  (`Latin Name`(150),`Cultivar`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Edible use details`
-- 

DROP TABLE IF EXISTS `Edible use details`;
CREATE TABLE IF NOT EXISTS `Edible use details` (
  `Latin name` tinytext NOT NULL,
  `Use` tinytext NOT NULL,
  PRIMARY KEY  (`Latin name`(150),`Use`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Edible uses`
-- 

DROP TABLE IF EXISTS `Edible uses`;
CREATE TABLE IF NOT EXISTS `Edible uses` (
  `Use` tinytext,
  `Catagory` tinytext,
  `Description` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Medicinal use details`
-- 

DROP TABLE IF EXISTS `Medicinal use details`;
CREATE TABLE IF NOT EXISTS `Medicinal use details` (
  `Latin name` tinytext NOT NULL,
  `Use` tinytext NOT NULL,
  PRIMARY KEY  (`Latin name`(150),`Use`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Medicinal uses`
-- 

DROP TABLE IF EXISTS `Medicinal uses`;
CREATE TABLE IF NOT EXISTS `Medicinal uses` (
  `Use` tinytext,
  `Description` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `NomsVernaculaires`
-- 

DROP TABLE IF EXISTS `NomsVernaculaires`;
CREATE TABLE IF NOT EXISTS `NomsVernaculaires` (
  `LatinName` varchar(150) NOT NULL,
  `VernaculaireName` varchar(150) NOT NULL,
  PRIMARY KEY  (`LatinName`,`VernaculaireName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Other use details`
-- 

DROP TABLE IF EXISTS `Other use details`;
CREATE TABLE IF NOT EXISTS `Other use details` (
  `Latin name` tinytext NOT NULL,
  `Use` tinytext NOT NULL,
  PRIMARY KEY  (`Latin name`(150),`Use`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Other uses`
-- 

DROP TABLE IF EXISTS `Other uses`;
CREATE TABLE IF NOT EXISTS `Other uses` (
  `Use` tinytext,
  `Description` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `PlantLocations`
-- 

DROP TABLE IF EXISTS `PlantLocations`;
CREATE TABLE IF NOT EXISTS `PlantLocations` (
  `Latin name` tinytext NOT NULL,
  `Cultivar` tinytext NOT NULL,
  `Common name` tinytext,
  `Habitat` tinytext,
  `Shade` tinytext,
  `Habit` tinytext,
  `Height` float default NULL,
  `Width` float default NULL,
  `WoodlandGarden` tinyint(4) default NULL,
  `Canopy` tinyint(4) default NULL,
  `Secondary` tinyint(4) default NULL,
  `SunnyEdge` tinyint(4) default NULL,
  `DappledShade` tinyint(4) default NULL,
  `ShadyEdge` tinyint(4) default NULL,
  `DeepShade` tinyint(4) default NULL,
  `OtherHabitats` tinyint(4) default NULL,
  `CultivatedBeds` tinyint(4) default NULL,
  `GroundCover` tinyint(4) default NULL,
  `Lawn` tinyint(4) default NULL,
  `Meadow` tinyint(4) default NULL,
  `Hedge` tinyint(4) default NULL,
  `Hedgerow` tinyint(4) default NULL,
  `Pond` tinyint(4) default NULL,
  `BogGarden` tinyint(4) default NULL,
  `Walls` tinyint(4) default NULL,
  `EastWall` tinytext,
  `SouthWall` tinytext,
  `WestWall` tinytext,
  `NorthWall` tinytext,
  `Hardyness` tinyint(4) default NULL,
  PRIMARY KEY  (`Latin name`(150),`Cultivar`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Range`
-- 

DROP TABLE IF EXISTS `Range`;
CREATE TABLE IF NOT EXISTS `Range` (
  `Latin name` tinytext NOT NULL,
  `Britain` tinytext,
  `Europe` tinytext,
  `Mediterranean` tinytext,
  `W Asia` tinytext,
  `E Asia` tinytext,
  `N America` tinytext,
  `S America` tinytext,
  `Africa` tinytext,
  `Australasia` tinytext,
  `Other` tinytext,
  PRIMARY KEY  (`Latin name`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `ScentedPlants`
-- 

DROP TABLE IF EXISTS `ScentedPlants`;
CREATE TABLE IF NOT EXISTS `ScentedPlants` (
  `LatinName` tinytext NOT NULL,
  `PlantPart` tinytext NOT NULL,
  `Fresh` tinyint(4) default NULL,
  `Crushed` tinyint(4) default NULL,
  `Dried` tinyint(4) default NULL,
  `ScentClass` tinytext,
  `Notes` tinytext,
  PRIMARY KEY  (`LatinName`(150),`PlantPart`(150))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Species database`
-- 

DROP TABLE IF EXISTS `Species database`;
CREATE TABLE IF NOT EXISTS `Species database` (
  `Latin name` tinytext NOT NULL,
  `Author` tinytext,
  `Botanical references` tinytext,
  `Family` tinytext,
  `Common name` tinytext,
  `Habit` tinytext,
  `Deciduous/Evergreen` tinytext,
  `Height` float default NULL,
  `Width` float default NULL,
  `Hardyness` tinyint(4) default NULL,
  `In cultivation?` tinyint(4) default NULL,
  `Medicinal` text,
  `Range` tinytext,
  `Habitat` tinytext,
  `Soil` tinytext,
  `Shade` tinytext,
  `Moisture` tinytext,
  `Well-drained` tinyint(4) default NULL,
  `Nitrogen fixer` tinyint(4) default NULL,
  `pH` tinytext,
  `Acid` tinyint(4) default NULL,
  `Alkaline` tinyint(4) default NULL,
  `Saline` tinyint(4) default NULL,
  `Wind` tinytext,
  `Growth rate` tinytext,
  `Pollution` tinytext,
  `Poor soil` tinyint(4) default NULL,
  `Drought` tinyint(4) default NULL,
  `Wildlife` tinyint(4) default NULL,
  `Woodland` tinyint(4) default NULL,
  `Meadow` tinyint(4) default NULL,
  `Wall` tinyint(4) default NULL,
  `In leaf` tinytext,
  `Flowering time` tinytext,
  `Seed ripens` tinytext,
  `Flower Type` tinytext,
  `Pollinators` tinytext,
  `Self-fertile` tinytext,
  `Known hazards` text,
  `Synonyms` tinytext,
  `Cultivation details` text,
  `Edible uses` text,
  `Uses notes` text,
  `Propagation 1` text,
  `Cultivars` tinyint(4) default NULL,
  `Cultivars in cultivation` tinyint(4) default NULL,
  `Heavy clay` tinyint(4) default NULL,
  `Pull-out` tinyint(4) default NULL,
  `Last update` datetime default NULL,
  `Record checked` tinyint(4) default NULL,
  `Rating` tinyint(4) default NULL,
  `FrostTender` tinytext,
  `SiteSpecificNotes` text,
  `Scented` tinyint(4) default NULL,
  `Medicinal Rating` tinyint(4) default NULL,
  PRIMARY KEY  (`Latin name`(150)),
  KEY `common` (`Common name`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Structure de la table `Synonyms`
-- 

DROP TABLE IF EXISTS `Synonyms`;
CREATE TABLE IF NOT EXISTS `Synonyms` (
  `LatinName` tinytext,
  `Author` tinytext,
  `TrueLatinName` tinytext,
  `Notes` tinytext,
  `PullOut` tinyint(4) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
