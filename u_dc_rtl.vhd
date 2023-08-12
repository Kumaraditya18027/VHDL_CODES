----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:41 03/27/2023 
-- Design Name: 
-- Module Name:    u_dc_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity u_dc_rtl is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           m : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end u_dc_rtl;

architecture Behavioral of u_dc_rtl is
signal temp:std_logic_vector(3 downto 0):="0000";
begin
process(clk,clr,m)begin
if(rising_edge(clk))then
 if(clr='1')then
 temp<="0000";
 elsif(clr='0' and m='0')THEN	
 temp<=temp+1;
 elsif(clr='0' and m='1')THEN
 temp<=temp-1;
 end if;
end if;
end process;
count<=temp;
end behavioral;