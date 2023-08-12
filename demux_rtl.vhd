----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:10 03/20/2023 
-- Design Name: 
-- Module Name:    demux_rtl - Behavioral 
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

entity demux_rtl is
    Port ( D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end demux_rtl;

architecture Behavioral of demux_rtl is

begin
PROCESS(S,D)
BEGIN
Y<="00000000";
CASE S IS
WHEN "000" =>Y(0)<=D;
WHEN "001" =>Y(1)<=D;
WHEN "010" =>Y(2)<=D;
WHEN "011" =>Y(3)<=D;
WHEN "100" =>Y(4)<=D;
WHEN "101" =>Y(5)<=D;
WHEN "110" =>Y(6)<=D;
WHEN "111" =>Y(7)<=D;
WHEN OTHERS =>Y<="00000000";
END CASE;
END PROCESS;

end Behavioral;

