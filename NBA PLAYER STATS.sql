
USE NBA_STAT

-- SHOWING DISTINCT TEAMS
SELECT distinct Team From playoffs;

-- how many teams?
select COUNT(DISTINCT TEAM) FROM playoffs; 

-- players 25yrs old above with more than 10 wins or more than 100 rebounds
SELECT *
	FROM playoffs
    where (AGE > 25) AND (WIN > 10 OR REBOUNDS > 100); 
    
-- TOTAL POINTS OF EACH PLAYER WITH FROM HIGHEST TO LOWEST
SELECT Player, (fieldgoalmade + 3pointfieldmade + freethrowsmade) as total_points
FROM PLAYOFFS
ORDER BY TOTAL_POINTS DESC;

-- MOSES MOODY AND JARED RHODEN TO MIL
USE NBA_STAT;

UPDATE PLAYOFFS
	set team = "MIL" 
    WHERE PID IN("2", "8");
    
-- JAYSON TATUM AND KLAY THOMPSON changed teams to SAS
UPDATE PLAYOFFS 
	SET team = "SAS" WHERE PID IN("9", "43"); 
    
 -- all TEAM WINS TWICE IN A ROW 
 update playoffs
	set win = (win+2);*/
			-- WITH SAFE MODE TURNED OFF
            
 -- GSW AND MIL TWICE IN A ROW 
 update PLAYOFFS
  SET WIN = (WIN+2)
  WHERE TEAM IN("GSW", "MIL"); 
			-- WITH SAFE MODE TURNED OFF


   
