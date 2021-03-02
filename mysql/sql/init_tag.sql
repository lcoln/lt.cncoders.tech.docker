use lt;

CREATE TABLE IF NOT EXISTS `tag` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `t_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `t_create_time` bigint NOT NULL,
  `t_update_time` bigint NOT NULL,
  `t_delete_time` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`t_id`),
  KEY `tag_t_id_IDX` (`t_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci