library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;


entity top is
Port(		SW: in std_logic_vector(1 downto 0);
			LED: out std_logic_vector(2 downto 0)
);


end top;

architecture Behavioral of top is
component adder 
	port( A: in std_logic;
			B: in std_logic;
			carry: out std_logic;
			sum: out std_logic
	);
end component;

begin
	my_2bit_adder: adder
		port map(A => SW(0),
					B => SW(1),
					sum => LED(0),
					carry => LED(1)
		);

end Behavioral;

