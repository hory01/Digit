library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

entity alu is
port( A: in std_logic;
		B: in std_logic;
		Sel: in std_logic_vector(1 downto 0);
		Result: out std_logic
);
end alu;

architecture Behavioral of alu is
begin
		process(A, B, Sel)
		begin
			case Sel is
				when "00" =>
					Result <= (A) and (B);
			   when "01" =>
					Result <= (A) or (B);
				when "10" =>
					Result <= (A) nand (B);
				when "11" => 
					Result <= (A) xor (B);
				when others =>
					Result <= 'X';
			end case;
		end process;
end Behavioral;

