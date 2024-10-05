CREATE PROCEDURE usp_get_holders_full_name()
BEGIN
     SELECT CONCAT_WS(' ', hol.first_name, hol.last_name) as `full_name`
	 FROM account_holders AS hol
       JOIN
	 (SELECT DISTINCT a.account_holder_id
      FROM accounts AS a) AS a ON hol.id = a.account_holder_id
	  ORDER BY `full_name`;
END