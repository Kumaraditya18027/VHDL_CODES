--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:11:22 03/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/up_down_count/u_dc_test.vhd
-- Project Name:  up_down_count
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: u_dc_rtl
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
 
ENTITY u_dc_test IS
END u_dc_test;
 
ARCHITECTURE behavior OF u_dc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT u_dc_rtl
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         m : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '1';--intially take as clear
   signal m : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: u_dc_rtl PORT MAP (
          clk => clk,
          clr => clr,
          m => m,
          count => count
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
  
	  m<='0';--remember how to remove the extra clock pulse.note
	  --m is intialised with 0 so need not to waste clock pulse here.
	  wait for 2 ps;
	  clr<='0';
	  wait for 30 ps;
	  m<='1';
	  wait for 30 ps;
   end process;

END;
