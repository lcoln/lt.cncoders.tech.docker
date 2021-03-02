mysql -uroot -p$MYSQL_ROOT_PASSWORD << EOF
source $WORK_PATH/$FILE_0;
source $WORK_PATH/$FILE_4;
EOF
mysql -ult -p$MYSQL_PASSWORD << EOF
source $WORK_PATH/$FILE_1;
source $WORK_PATH/$FILE_2;
source $WORK_PATH/$FILE_3;
EOF