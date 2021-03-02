use lt;

CREATE TABLE IF NOT EXISTS `article` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `a_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_tag_id` int NOT NULL,
  `a_create_time` bigint NOT NULL,
  `a_update_time` bigint NOT NULL,
  `a_delete_time` bigint NOT NULL DEFAULT '0',
  `a_status` int DEFAULT '0' COMMENT '0: 下架 1: 上架',
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `article_UN` (`a_title`),
  KEY `NewTable_a_id_IDX` (`a_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci