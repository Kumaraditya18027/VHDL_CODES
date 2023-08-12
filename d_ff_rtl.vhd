----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:43 03/27/2023 
-- Design Name: 
-- Module Name:    d_ff_rtl - Behavioral 
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

entity d_ff_rtl is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qbar : out  STD_LOGIC);
end d_ff_rtl;

architecture Behavioral of d_ff_rtl is
signal temp:std_logic:='0';
begin
process(d,clk,rst,temp)begin
if(rst='1')then
temp<='0';
elsif(rising_edge(clk))then
if(d='0')then
temp<=d;
elsif(d='1')then
temp<=d;
end if;
end if;
q<=temp;
qbar<=not(temp);
end process;
end Behavioral;

