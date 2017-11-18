library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
port ( A: in std_logic_vector(3 downto 0);
		 B: in std_logic_vector(3 downto 0);
		 LT: out std_logic;
		 EQ: out std_logic;
		 GT: out std_logic
);
end comparator;

architecture Behavioral of comparator is

begin

	process (A, B)
	begin
			if (A < B) then
				LT <= '1';
				EQ <= '0';
				GT <= '0';
			elsif (A = B) then
				LT <= '0';
				EQ <= '1';
				GT <= '0';
			else
				LT <= '0';
				EQ <= '0';
				GT <= '1';
			end if;
	end process;
	
end Behavioral;

