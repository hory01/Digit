library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder is
port( A: in std_logic;
		B: in std_logic;
		carry: out std_logic;
		sum: out std_logic
);
end adder;

architecture Behavioral of adder is
-- Temp változó
signal result: std_logic_vector(1 downto 0);
begin

	-- Plusz egy bittel kiegészíti a A-t és B-t, melynek értéke 0, majd összeadja õket.
	-- A és B 1 bites de a busz 2 bit széles ezért 2 bites értékeket vár;
	result <= ('0' & A) + ('0' & B);
	
	-- sum-on kiküldi az eredményt
	sum <= result(0);
	
	-- carry-n a maradékot
	carry <= result(1);

end Behavioral;

