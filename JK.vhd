library ieee;
use ieee.std_logic_1164.all;
entity JK is
  port (J,K,SET,CLR: in std_logic;
		  Q,Qb: out std_logic);
end JK;
Architecture T of JK is
signal t: std_logic;
  begin 
   process (J,K,CLR,SET)
	 begin
	 	  if SET = '0' then
	     t <= '1';
	  elsif CLR = '0' then
	        t <= '0';
	  elsif( J = '0' and K = '0') then
           t <= t;
     elsif (J = '0' and K = '1') then
           t <= '0';
	  elsif (J = '1' and K = '0') then
           t <= '1';
	  elsif (J = '1' and K = '1') then
	        t <= not t;
	  end if;	
	Q<=t ; 
  end process;
end T;