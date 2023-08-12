--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:02:15 03/13/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/xor/comp_test.vhd
-- Project Name:  xor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp_rtl
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
 
ENTITY comp_test IS
END comp_test;
 
ARCHITECTURE behavior OF comp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp_rtl PORT MAP (
          A => A,
          B => B,
          M => M,
          S => S,
          COUT => COUT
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      A<="0000";
		B<="0001";
		M<='0';
		WAIT FOR 1 PS;
		A<="0110";
		B<="0001";
		M<='0';
		WAIT FOR 1 PS;
		A<="1010";
		B<="0101";
		M<='1';
		WAIT FOR 1 PS;
		A<="1000";
		B<="0001";
		M<='1';
		WAIT FOR 1 PS;
   end process;

END;
