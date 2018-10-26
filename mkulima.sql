
CREATE TABLE `produce` (
  `produce_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`produce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `consumer` (
  `consumer_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `produce_id` int(11) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`consumer_id`),
  KEY `fk_produce_id` (`produce_id`),
  CONSTRAINT `fk_produce_id` FOREIGN KEY (`produce_id`) REFERENCES `produce` (`produce_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_id_farmer` (`product_id`),
  CONSTRAINT `fk_product_id_farmer` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `fk_product_id_supplier` (`product_id`),
  CONSTRAINT `fk_product_id_supplier` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


