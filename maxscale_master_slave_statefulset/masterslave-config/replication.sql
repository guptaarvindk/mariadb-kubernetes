STOP SLAVE;
CHANGE MASTER TO 
    MASTER_HOST='mariadb-masterslave-0.mariadb-cluster', 
	MASTER_PORT=3306, 
	MASTER_USER='maxuser', 
	MASTER_PASSWORD='maxpwd', 
	MASTER_LOG_POS=4, 
	MASTER_LOG_FILE='mariadb-bin.000001', 
	MASTER_CONNECT_RETRY=1;
START SLAVE;

SET GLOBAL max_connections=10000;
SET GLOBAL gtid_strict_mode=ON;
