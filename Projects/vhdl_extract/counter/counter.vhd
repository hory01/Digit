library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
port( clk : in std_logic;
		rst : in std_logic;
		num : out std_logic_vector(4 downto 0)
);
end counter;

architecture Behavioral of counter is
signal temp : std_logic_vector(0 to 4);
begin
	process(clk,rst)
		begin
			if rst = '1' then
				temp <= "00000";
			elsif(rising_edge(clk)) then
				if temp = "11111" then
					temp <= "00000";
				else
					temp <= temp + 1;
				end if;
			end if;
	end process;
	num <= temp;
end Behavioral;

