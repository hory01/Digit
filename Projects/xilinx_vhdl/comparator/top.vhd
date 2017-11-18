library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;

entity top is
port(SW: in std_logic_vector(7 downto 0);	
	  LED: out std_logic_vector(2 downto 0)
);
end top;

architecture Behavioral of top is
component comparator
	 port(A: in std_logic_vector(3 downto 0);
		   B: in std_logic_vector(3 downto 0);
		   LT: out std_logic;
		   EQ: out std_logic;
		   GT: out std_logic
	  );
end component;
begin
	my_comp: comparator
		port map( A => SW(3 downto 0),
					 B => SW(7 downto 4),
					 LT => LED(0),
					 EQ => LED(1),
					 GT => LED(2)
		);		 
end Behavioral;