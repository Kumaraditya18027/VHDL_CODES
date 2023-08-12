----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:38 02/27/2023 
-- Design Name: 
-- Module Name:    f_subtractor_rtl - Behavioral 
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

entity f_subtractor_rtl is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (3 downto 0);
           bout : out  STD_LOGIC);
end f_subtractor_rtl;

architecture Behavioral of f_subtractor_rtl is
component fullsubtractor_rtl is
    Port ( a,b,c : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal t0,t1,t2:STD_LOGIC;
begin
FS1: fullsubtractor_rtl port map(a(0),b(0),bin,d(0),t0);
FS2: fullsubtractor_rtl port map(a(1),b(1),t0,d(1),t1);
FS3: fullsubtractor_rtl port map(a(2),b(2),t1,d(2),t2);
FS4: fullsubtractor_rtl port map(a(3),b(3),t2,d(3),bout);

end Behavioral;

