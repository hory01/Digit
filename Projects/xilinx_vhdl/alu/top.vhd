library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;


entity top is

	port(SW: in std_logic_vector(3 downto 0);
		  LED: out std_logic_vector (0 downto 0)
		  );

end top;

architecture Behavioral of top is
component alu
	port(A: in std_logic;
		  B: in std_logic;
		  Sel: in std_logic_vector(1 downto 0);
		  Result: out std_logic
	);
end component;
begin
	my_alu: alu
		port map(A => SW(0),
					B => SW(1),
					Sel(1 downto 0) => SW(3 downto 2),
					Result => LED(0)
		);

end Behavioral;

