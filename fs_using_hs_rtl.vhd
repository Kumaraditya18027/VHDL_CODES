----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:16 02/27/2023 
-- Design Name: 
-- Module Name:    fs_using_hs - Behavioral 
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

entity fs_using_hs is
    Port ( A,B,C : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC;
           BORROW : out  STD_LOGIC);
end fs_using_hs;

architecture Behavioral of fs_using_hs is
component hs_rtl is
    Port ( a,b : in  STD_LOGIC;
           diff,borrow : out  STD_LOGIC);
end component;
signal t1,t2,t3:STD_LOGIC;
begin
hs1: hs_rtl port map(a=>A,b=>B,diff=>t1,borrow=>t2);
hs2 :hs_rtl port map(a=>t1,b=>C,diff=>DIFFERENCE,borrow=>t3);
BORROW <= t2 or t3;

end Behavioral;

