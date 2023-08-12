--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:17:55 03/20/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/mux/mux_test.vhd
-- Project Name:  mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_rtl
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_rtl
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_rtl PORT MAP (
          I => I,
          S => S,
          Y => Y
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
    I<="00000001";
	 S<="001";
	 WAIT FOR 1 PS;
	 I<="00100001";
	 S<="101";
	 WAIT FOR 1 PS;
	 I<="00000001";
	 S<="011";
	 WAIT FOR 1 PS;
	 I<="00000101";
	 S<="010";
	 WAIT FOR 1 PS;
	 

      wait;
   end process;

END;
