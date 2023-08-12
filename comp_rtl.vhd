----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:47 03/13/2023 
-- Design Name: 
-- Module Name:    comp_rtl - Behavioral 
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

entity comp_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           COUT : out  STD_LOGIC);
end comp_rtl;

architecture Behavioral of comp_rtl is
COMPONENT xor_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           o : out  STD_LOGIC);
end COMPONENT;
COMPONENT fa_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end COMPONENT;
signal b0,b1,b2,b3,c0,c1,c2:std_logic:='0';
begin
XG1: xor_rtl port map(x=>B(0),y=>M,o=>b0);
XG2: xor_rtl port map(x=>B(1),y=>M,o=>b1);
XG3: xor_rtl port map(x=>B(2),y=>M,o=>b2);
XG4: xor_rtl port map(x=>B(3),y=>M,o=>b3);

CO1: fa_rtl port map(a=>A(0),b=>b0,cin=>M,s=>S(0),cout=>c0);
CO2: fa_rtl port map(a=>A(1),b=>b1,cin=>c0,s=>S(1),cout=>c1);
CO3: fa_rtl port map(a=>A(2),b=>b2,cin=>c1,s=>S(2),cout=>c2);
CO4: fa_rtl port map(a=>A(3),b=>b3,cin=>c2,s=>S(3),cout=>COUT);
end Behavioral;

