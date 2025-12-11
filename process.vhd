----------------------------------------------------------------------------------
-- Company: UFSJ
-- Engineer: MARCELLY GABARRONA 
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity circuito5 is
port(
		b, a: in std_logic;
		x, Y : out std_logic
	);
end circuito5;
	
	
architecture Behavioral of circuito5 is

begin

   teste: process( a, b)
   variable x1: std_logic;
   variable y1: std_logic;
   begin
        if b = '0' then
            x1:= '0';
            y1:='0';

         elsif a = '0' and b = '1'then
         x1:= '0';
         y1:= '1';
        
         else
         x1:= '1';
         y1:= '1';

         end if;
        
         x <= x1;
         y <= y1;
        
    end process;

end Behavioral;
