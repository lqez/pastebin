DROP FUNCTION IF EXISTS pretty_size;
DELIMITER $$

CREATE FUNCTION pretty_size( size DOUBLE )
	RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	DECLARE c INT DEFAULT 0;
	DECLARE unit INT DEFAULT 1000;
	DECLARE unitChar CHAR(6) DEFAULT 'KMGTPE';
	DECLARE binaryPrefix BOOLEAN DEFAULT 1;

	/* Set binaryPrefix = 1 to use binary unit & prefix */
	/* See IEC 60027-2 A.2 and ISO/IEC 80000 */
	IF binaryPrefix = 1 THEN
		SET unit = 1024;
	END IF;

	WHILE size >= unit AND c < 7 DO
		SET size = size / unit;
		SET c = c + 1;
	END WHILE;

	RETURN CONCAT(
		IF( c, FORMAT( size, 2 ), size ),
		' ',
		SUBSTR( unitChar, c, 1 ),
		IF( binaryPrefix AND c, 'i', '' ),
		'B'
		);
END $$

DELIMITER ;
