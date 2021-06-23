--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:59:45 06/20/2021
-- Design Name:   
-- Module Name:   C:/Users/samue/Desktop/6TO SEMESTRE/SISTEMAS DIGITALES/Xilinx/LP5_INTEGER/LP5_INTEGER_TB.vhd
-- Project Name:  LP5_INTEGER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LP5_INTEGER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY LP5_INTEGER_TB IS
END LP5_INTEGER_TB;
 
ARCHITECTURE behavior OF LP5_INTEGER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LP5_INTEGER
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         leds : OUT  std_logic_vector(3 downto 0);
         display : OUT  std_logic_vector(6 downto 0);
         an : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal leds : std_logic_vector(3 downto 0);
   signal display : std_logic_vector(6 downto 0);
   signal an : std_logic;

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LP5_INTEGER PORT MAP (
          clock => clock,
          reset => reset,
          leds => leds,
          display => display,
          an => an
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
