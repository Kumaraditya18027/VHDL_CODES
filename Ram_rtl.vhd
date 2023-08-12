----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:07 04/20/2023 
-- Design Name: 
-- Module Name:    Ram_rtl - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ram_rtl is
    Port ( addr : in  STD_LOGIC_VECTOR (4 downto 0);
           data : in  STD_LOGIC_VECTOR (7 downto 0);
           we : in  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end Ram_rtl;

architecture Behavioral of Ram_rtl is
	type ma is array(0 to 31) of STD_LOGIC_VECTOR(7 downto 0);
	signal mem: ma:=(others=>(others=>'0'));
begin
	process(clk) begin
		if rising_edge(clk) then
			if we='1' then
				mem(to_integer(unsigned(addr)))<=data;
			end if;
			res<=mem(to_integer(unsigned(addr)));
		end if;
	end process;


end Behavioral;

