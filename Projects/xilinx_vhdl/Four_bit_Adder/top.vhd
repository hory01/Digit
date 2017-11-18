library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port( SW : in std_logic_vector(7 downto 0);
		LED : out std_logic_vector(4 downto 0)
);
end top;

architecture Behavioral of top is
component Four_Bit_Adder
	 port( A : in std_logic_vector(3 downto 0);
			 B : in std_logic_vector(3 downto 0);
			 Sum : out std_logic_vector(3 downto 0);
			 Carry : out std_logic
);
end component;
begin
	my_4bit_adder : Four_Bit_Adder
		port map( A => SW(3 downto 0),
					 B => SW(7 downto 4),
					 Sum => LED(3 downto 0),
					 Carry => LED(4)
);
end Behavioral;

