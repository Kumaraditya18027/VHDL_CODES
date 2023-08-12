--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:18:19 04/10/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121055/piso/piso_test.vhd
-- Project Name:  piso
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso_rtl
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
 
ENTITY piso_test IS
END piso_test;
 
ARCHITECTURE behavior OF piso_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso_rtl
    PORT(
         p : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic;
         r : IN  std_logic;
         load : IN  std_logic;
         sout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic_vector(3 downto 0) := (others => '0');
   signal c : std_logic := '0';
   signal r : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal sout : std_logic;
   -- No clocks detected in port list. Replace c below with 
   -- appropriate port name 
 
   constant c_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_rtl PORT MAP (
          p => p,
          c => c,
          r => r,
          load => load,
          sout => sout
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
   r<='1';
   wait for 2 ps;
	r<='0';
   p<="1101";
   load<='0';
   wait for 2 ps;
   load<='1';
   wait for 2 ps;
	load<='1';
   wait for 2 ps;
	load<='1';
   wait for 2 ps;
	load<='1';
   wait for 2 ps;
   	
   end process;

END;
