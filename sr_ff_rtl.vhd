----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:51 03/27/2023 
-- Design Name: 
-- Module Name:    sr_ff_rtl - Behavioral 
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

entity sr_ff_rtl is
    Port ( clk : in  STD_LOGIC;
           s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qbar : out  STD_LOGIC);
end sr_ff_rtl;

architecture Behavioral of sr_ff_rtl is
signal t1,t2:std_logic:='0';
begin
process(t1,t2,s,r,clk,rst)begin
if(rst='1')then
t1<='0';t2<='1';
elsif(rising_edge(clk))then
if(s='0')and(r='0')then
t1<=t1;t2<=t2;
elsif(s='0')and(r='1')then
t1<='0';t2<='1';
elsif(s='1')and(r='0')then
t1<='1';t2<='0';
elsif(s='1')and(r='1')then
t1<='Z';t2<='Z';
end if;
end if;
q<=t1;
qbar<=t2;
end process;
end Behavioral;

