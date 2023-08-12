----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:43 04/10/2023 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( din : in  STD_LOGIC;
           c : in  STD_LOGIC;
           rst1 : in  STD_LOGIC;
           qout : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is
component d_rtl is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;
signal t1,t2,t3:std_logic:='0';
begin
F1: d_rtl port map(d=>din,clk=>c,rst=>rst1,q=>t1);
F2: d_rtl port map(d=>t1,clk=>c,rst=>rst1,q=>t2);
F3: d_rtl port map(d=>t2,clk=>c,rst=>rst1,q=>t3);
F4: d_rtl port map(d=>t3,clk=>c,rst=>rst1,q=>qout(3));
qout(0)<=t1;
qout(1)<=t2;
qout(2)<=t3;
end Behavioral;

