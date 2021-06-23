
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LP5_INTEGER is
    Port ( clock, reset : in  STD_LOGIC;			 
           leds : out  STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0);
           an: out std_logic);
end LP5_INTEGER;

architecture LP5_INTEGER_ARCH of LP5_INTEGER is
component LP5_COUNTER is 
Port ( clk, rst: in  STD_LOGIC;
           cnt : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component PL5_CONV7SEG is
Port ( c_in : in  STD_LOGIC_VECTOR (3 downto 0);
				an	 : out  STD_LOGIC := '1';
           disp : out  STD_LOGIC_VECTOR (6 downto 0));
end component;
--signals
signal cable: std_logic_vector(3 downto 0);
begin
--port map
u0: LP5_COUNTER port map (
clk => clock,
rst => reset,
cnt => cable
);

u1: PL5_CONV7SEG port map (
c_in => cable,
an => an,
disp => display
);
leds <= cable;

end LP5_INTEGER_ARCH;

