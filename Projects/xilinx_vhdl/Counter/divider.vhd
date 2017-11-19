library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divider is
port( clk : in std_logic;
		count : out std_logic
);
end divider;

architecture Behavioral of divider is
--div = (eredeti_órajel(Hz)/kívánt_órajel(Hz))/2;
signal div : std_logic_vector (25 downto 0) := "10111110101111000010000000";
signal div_counter : std_logic_vector(25 downto 0) := (others => '0');
signal pulse : std_logic;
begin
	countClock: process(clk, pulse)
	begin
		if rising_edge(clk) then
			div_counter <= div_counter + 1;
			if (div_counter > div) then
				pulse <= not pulse;
				count <= pulse;
				div_counter <= (others => '0');
			end if;
		end if;
	end process;

end Behavioral;

