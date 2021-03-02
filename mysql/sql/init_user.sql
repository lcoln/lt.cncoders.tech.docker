use lt;

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `u_password` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'username:password',
  `u_create_time` bigint NOT NULL,
  `u_update_time` bigint NOT NULL,
  `u_delete_time` bigint NOT NULL,
  `u_phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`u_id`),
  KEY `user_u_username_IDX` (`u_username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci