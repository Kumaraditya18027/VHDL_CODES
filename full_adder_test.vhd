--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:06:56 02/20/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/full_adder/full_adder_test.vhd
-- Project Name:  full_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_rtl
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
 
ENTITY full_adder_test IS
END full_adder_test;
 
ARCHITECTURE behavior OF full_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         y : OUT  std_logic;
         x : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   signal x : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_rtl PORT MAP (
          a => a,
          b => b,
          c => c,
          y => y,
          x => x
        );

   -- Clock process definitions
  
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      a<='0';
		b<='0';
		c<='0';
		wait for 1 ps;
		a<='0';
		b<='0';
		c<='1';
		wait for 1 ps;
		a<='0';
		b<='1';
		c<='0';
		wait for 1 ps;
		a<='0';
		b<='1';
		c<='1';
		wait for 1 ps;
		a<='1';
		b<='0';
		c<='0';
		wait for 1 ps;
		a<='1';
		b<='0';
		c<='1';
		wait for 1 ps;
		a<='1';
		b<='1';
		c<='0';
		wait for 1 ps;
		a<='1';
		b<='1';
		c<='1';
		wait for 1 ps;
		
   end process;

END;
