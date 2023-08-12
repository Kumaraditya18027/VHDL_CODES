--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:26:02 02/20/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/half_subtractor/half_subtractor_test.vhd
-- Project Name:  half_subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_subtractor_rtl
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
 
ENTITY half_subtractor_test IS
END half_subtractor_test;
 
ARCHITECTURE behavior OF half_subtractor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_subtractor_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         y : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_subtractor_rtl PORT MAP (
          a => a,
          b => b,
          y => y,
          c => c
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
      a<='0';
		b<='0';
		wait for 1 ps;
		a<='0';
		b<='1';
		wait for 1 ps;
		a<='1';
		b<='0';
		wait for 1 ps;
		a<='1';
		b<='1';
		wait for 1 ps;
   end process;

END;
