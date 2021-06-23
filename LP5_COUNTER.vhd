library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity LP5_COUNTER is
    Port ( clk, rst: in  STD_LOGIC;
           cnt : out  STD_LOGIC_VECTOR (3 downto 0));
end LP5_COUNTER;

architecture LP5_COUNTER_ARCH of LP5_COUNTER is

	signal count: integer:=0;--Cuenta los pulsos de  50MHz
	signal temp: integer := 0;--Cuenta en 200ns
begin 
	process(clk,rst,count,temp)
		begin
			if rst = '1' then
				count <= 0;
				temp <= 0;
			elsif rising_edge(clk) then
				if count < 9 then
					count <= count +1;
				else
					count <= 0;
					if temp < 9 then
						temp <= temp +1 ;
					else temp <= 0;
					end if;
				end if;
			end if;
			cnt <= std_logic_vector(to_unsigned(temp,4));
	end process;
end LP5_COUNTER_ARCH;

