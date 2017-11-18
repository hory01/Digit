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
-- Temp v�ltoz�
signal result: std_logic_vector(1 downto 0);
begin

	-- Plusz egy bittel kieg�sz�ti a A-t �s B-t, melynek �rt�ke 0, majd �sszeadja �ket.
	-- A �s B 1 bites de a busz 2 bit sz�les ez�rt 2 bites �rt�keket v�r;
	result <= ('0' & A) + ('0' & B);
	
	-- sum-on kik�ldi az eredm�nyt
	sum <= result(0);
	
	-- carry-n a marad�kot
	carry <= result(1);

end Behavioral;

