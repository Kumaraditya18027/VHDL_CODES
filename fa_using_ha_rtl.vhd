----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:54 02/27/2023 
-- Design Name: 
-- Module Name:    fa_using_ha_rtl - Behavioral 
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

entity fa_using_ha_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end fa_using_ha_rtl;

architecture Behavioral of fa_using_ha_rtl is
component ha_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;
signal t1,t2,t3:STD_LOGIC;
begin
HA1: ha_rtl port map(a=>A, b=>B,s=>t1,c=>t2);
HA2: ha_rtl port map(a=>t1, b=>C, s=>SUM,c=>t3);
carry<=t2 or t3;


end Behavioral;

