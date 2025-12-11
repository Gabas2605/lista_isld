----------------------------------------------------------------------------------
-- Company: UFSJ
-- Engineer: MARCELLY GABARRONA 
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity somador is
port(
		X0, X1 : in std_logic;
        S: OUT std_logic
	);
end somador;
	
	
architecture Behavioral of somador is
   component meio_somador is
    port(
		X, Y: in std_logic;
		A, B : out std_logic
	);
end component;
    signal saidaA: std_logic_vector 
    saidaB:  std_logic;
begin

    soamando: meio_somador port map(
    X => X0,
    Y => X1,
    A => saidaA,
    B => saidaB
 );

 S <= saidaA and saidaB;


end Behavioral;
