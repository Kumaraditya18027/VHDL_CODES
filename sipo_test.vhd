--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:13:16 04/10/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/sipo/sipo_test.vhd
-- Project Name:  sipo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_rtl
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
 
ENTITY sipo_test IS
END sipo_test;
 
ARCHITECTURE behavior OF sipo_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_rtl
    PORT(
         din : IN  std_logic;
         c : IN  std_logic;
         rst1 : IN  std_logic;
         qout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic := '0';
   signal c : std_logic := '0';
   signal rst1 : std_logic := '0';

 	--Outputs
   signal qout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace c below with 
   -- appropriate port name 
 
   constant c_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_rtl PORT MAP (
          din => din,
          c => c,
          rst1 => rst1,
          qout => qout
        );

   -- Clock process definitions
   c_process :process
   begin
		c <= '0';
		wait for c_period/2;
		c <= '1';
		wait for c_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	rst1<='1';
	wait for c_period;
	din<='1';
	rst1<='0';
	wait for 8 ps;

   end process;

END;
