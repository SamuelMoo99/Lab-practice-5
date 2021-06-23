
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity PL5_CONV7SEG is
    Port ( c_in : in  STD_LOGIC_VECTOR (3 downto 0);
				an	 : out  STD_LOGIC := '1';
           disp : out  STD_LOGIC_VECTOR (6 downto 0));
end PL5_CONV7SEG;

architecture PL5_CONV7SEG_ARCH of PL5_CONV7SEG is

begin
  process(c_in)
    begin
        case c_in is
            when "0000" => --0
                disp <= "1111110";                
            when "0001" => --1
                disp <= "0110000";                
            when "0010" => --2
                disp <= "1101101";               
            when "0011" => --3
                disp <= "1111001";               
            when "0100" => --4
                disp <= "0110011";               
            when "0101" =>--5
                disp <= "1011011";                
            when "0110" =>--6
                disp <= "1011111";               
            when "0111" =>--7
                disp <= "1110000";                
            when "1000" =>--8
                disp <= "1111111";                
            when others => --9
                disp <= "1111011";         
            
        end case;
    end process;
end PL5_CONV7SEG_ARCH;

