--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:23:20 03/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/sr_ff/sr_ff_test.vhd
-- Project Name:  sr_ff
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_ff_rtl
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
 
ENTITY sr_ff_test IS
END sr_ff_test;
 
ARCHITECTURE behavior OF sr_ff_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sr_ff_rtl
    PORT(
         clk : IN  std_logic;
         s : IN  std_logic;
         r : IN  std_logic;
         rst : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_ff_rtl PORT MAP (
          clk => clk,
          s => s,
          r => r,
          rst => rst,
          q => q,
          qbar => qbar
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     rst<='0';
	  s<='0';
	  r<='0';
	  wait for clk_period;
	   rst<='0';
	  s<='1';
	  r<='0';
	  wait for clk_period;
	   rst<='0';
	  s<='0';
	  r<='1';
	  wait for clk_period;
	   rst<='0';
	  s<='1';
	  r<='1';
	  wait for clk_period;

	  
   end process;

END;
