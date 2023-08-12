--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:32:36 02/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/fulladder/f_adder_test.vhd
-- Project Name:  fulladder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: f_adder_rtl
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
 
ENTITY f_adder_test IS
END f_adder_test;
 
ARCHITECTURE behavior OF f_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT f_adder_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         s : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: f_adder_rtl PORT MAP (
          a => a,
          b => b,
          s => s,
          cout => cout
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      a<="1101";
		b<="0001";
		wait for 1 ps;
		a<="1101";
		b<="0010";
		wait for 1 ps;
		a<="0000";
		b<="1011";
		wait for 1 ps;
		a<="0101";
		b<="1000";
		wait for 1 ps;
   end process;

END;
