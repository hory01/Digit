library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port( BTN : in std_logic_vector(0 downto 0);
		LED : out std_logic_vector(4 downto 0);
		MCLK : in std_logic
);
end top;

architecture Behavioral of top is
component counter
port( clk : in std_logic;
		rst : in std_logic;
		num : out std_logic_vector(4 downto 0)
);
end component;

component divider
port( clk : in std_logic;
		count : out std_logic
);
end component;
signal timer : std_logic;
begin
	my_div : divider
		port map( clk => MCLK,
					 count => timer
			);

	my_counter : counter
		port map( clk => timer,
					 rst => BTN(0),
					 num => LED(4 downto 0)
		);

end Behavioral;

