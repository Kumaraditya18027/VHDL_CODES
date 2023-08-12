----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:12 02/27/2023 
-- Design Name: 
-- Module Name:    f_adder_rtl - Behavioral 
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

entity f_adder_rtl is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end f_adder_rtl;

architecture Behavioral of f_adder_rtl is
component fulladder_rtl is
    Port ( a,b,c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
signal c:STD_LOGIC_VECTOR(2 downto 0);
begin
fa1:fulladder_rtl port map(a(0),b(0),'0',s(0),c(0));
fa2:fulladder_rtl port map(a(1),b(1),c(0),s(1),c(1));
fa3:fulladder_rtl port map(a(2),b(2),c(1),s(2),c(2));
fa4:fulladder_rtl port map(a(3),b(3),c(2),s(3),cout);

end Behavioral;

