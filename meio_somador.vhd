----------------------------------------------------------------------------------
-- Company: UFSJ
-- Engineer: MARCELLY GABARRONA 
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity meio_somador is
port(
		X, Y: in std_logic;
		A, B : out std_logic
	);
end meio_somador;
	
	
architecture Behavioral of meio is
 signal S_primeirand, S_primeiraOr : std_logic;

begin

    S_primeirand <= X and Y;
    B <= S_primeirand;
    S_primeiraOr <= Y or (not X);
    A <= (not S_primeiraOr) or S_primeirand or X;

end Behavioral;
