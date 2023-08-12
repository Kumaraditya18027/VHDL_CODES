--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:37:16 04/20/2023
-- Design Name:   
-- Module Name:   /home/soumyadeep/Desktop/13000121033/RAM/ram_test.vhd
-- Project Name:  RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ram_rtl
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
 
ENTITY ram_test IS
END ram_test;
 
ARCHITECTURE behavior OF ram_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ram_rtl
    PORT(
         addr : IN  std_logic_vector(4 downto 0);
         data : IN  std_logic_vector(7 downto 0);
         we : IN  std_logic;
         res : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(4 downto 0) := (others => '0');
   signal data : std_logic_vector(7 downto 0) := (others => '0');
   signal we : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal res : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ram_rtl PORT MAP (
          addr => addr,
          data => data,
          we => we,
          res => res,
          clk => clk
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
              data <= "10010000";
        addr <= "00000";
        we <= '1';
        wait for 2 ps;
        we <= '0';
		  
		   -- Read data from the RAM
        addr <= "00000";
        wait for 2 ps;
        assert res = x"A" report "Error: Wrong data read from RAM!" severity error;
		  
		  -- Write data to another location in the RAM
        data <= "11100001";
        addr <= "00100";
        we <= '1';
        wait for 2 ps;
        we <= '0';
		  
		  -- Read data from the new location in the RAM
        addr <= "00100";
        wait for 2 ps;
        assert res = x"5" report "Error: Wrong data read from RAM!" severity error;
		  
		  wait for 2 ps;
   end process;

END;
