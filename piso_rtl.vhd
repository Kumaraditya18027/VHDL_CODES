----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:14 04/10/2023 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( p : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           r : in  STD_LOGIC;
           load : in  STD_LOGIC;
           sout : out  STD_LOGIC);
end piso_rtl;

architecture Behavioral of piso_rtl is
component d_rtl is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;

signal t1,t2,t3,t4,c1,c2,c3:std_logic:='0';

begin
t1<=not(load) and p(0);
f1:d_rtl port map(d=>t1,clk=>c,rst=>r,q=>c1);
t2<=(not(load)and p(1)) or(c1 and load);
f2:d_rtl port map(d=>t2,clk=>c,rst=>r,q=>c2);
t3<=(not(load)and p(2)) or(c2 and load);
f3:d_rtl port map(d=>t3,clk=>c,rst=>r,q=>c3);
t4<=(not(load)and p(3)) or(c3 and load);
f4:d_rtl port map(d=>t4,clk=>c,rst=>r,q=>sout);

end Behavioral;

