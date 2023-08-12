--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:38:48 03/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/d_ff/d_ff_test.vhd
-- Project Name:  d_ff
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_ff_rtl
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
 
ENTITY d_ff_test IS
END d_ff_test;
 
ARCHITECTURE behavior OF d_ff_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_ff_rtl
    PORT(
         d : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_ff_rtl PORT MAP (
          d => d,
          clk => clk,
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
	 d<='0';
	 wait for clk_period;
	 d<='1';
	 wait for clk_period;
   end process;

END;
