library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Four_Bit_Adder is
port( A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		Sum : out std_logic_vector(3 downto 0);
		Carry : out std_logic
);
end Four_Bit_Adder;

architecture Behavioral of Four_Bit_Adder is
signal temp: std_logic_vector (4 downto 0);
begin
	temp <= ("0" & A) + ("0" & B);
	sum <= temp(3 downto 0);
	carry <= temp(4);
end Behavioral;

