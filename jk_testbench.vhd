--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:03:43 03/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/jk/jk_testbench.vhd
-- Project Name:  jk
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jk_rtl
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
 
ENTITY jk_testbench IS
END jk_testbench;
 
ARCHITECTURE behavior OF jk_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jk_rtl
    PORT(
         clk : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic;
			rst:IN std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';
	signal rst: std_logic:='0';

 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_rtl PORT MAP (
          clk => clk,
          j => j,
          k => k,
			 rst=>rst,
          q => q,
          qb => qb
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
     j<='0';
	  k<='0';
	  wait for clk_period;
	  j<='1';
	  k<='0';
	  wait for clk_period;
	  j<='0';
	  k<='1';
	  wait for clk_period;
	  j<='1';
	  k<='1';
	  wait for clk_period;
	  rst<='1';
	  wait for clk_period;
   end process;

END;
