----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:09 03/20/2023 
-- Design Name: 
-- Module Name:    mux_rtl - Behavioral 
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

entity mux_rtl is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux_rtl;

architecture Behavioral of mux_rtl is

begin
with S select
Y<=I(0) WHEN "000",
I(1) WHEN "001",
I(2) WHEN "010",
I(3) WHEN "011",
I(4) WHEN "100",
I(5) WHEN "101",
I(6) WHEN "110",
I(7) WHEN OTHERS;

end Behavioral;

