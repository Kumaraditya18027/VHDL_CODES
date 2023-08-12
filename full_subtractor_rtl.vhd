----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:26 02/20/2023 
-- Design Name: 
-- Module Name:    full_subtractor_rtl - Behavioral 
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

entity full_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           y : out  STD_LOGIC;
           x : out  STD_LOGIC);
end full_subtractor_rtl;

architecture Behavioral of full_subtractor_rtl is
signal t: STD_LOGIC:='0';

begin
t <= (not(a) and b) or (not(b) and a);
y <= (not(t) and c) or (not(c) and t);
x <= (not(a) and b) or (not(a) and c) or (b and c);


end Behavioral;

