----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:37:25 03/27/2023 
-- Design Name: 
-- Module Name:    jk_rtl - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_rtl is
    Port ( clk : in  STD_LOGIC;
           j : in  STD_LOGIC;
           rst:in std_logic;
           k : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end jk_rtl;

architecture Behavioral of jk_rtl is
signal temp:std_logic:='0';
begin
process(j,k,clk,temp,rst)begin
if(rst='1')then
temp<='0';
elsif(rising_edge(clk)) then
if(j='0') and(k='0') then
temp<=temp;
elsif(j='0') and (k='1') then
temp<='0';
elsif(j='1')and(k='0') then
temp<='1';
elsif(j='1')and(k='1')then
temp<=not(temp);
end if;
end if;
q<=temp;
qb<=not(temp);
end process;

end Behavioral;

