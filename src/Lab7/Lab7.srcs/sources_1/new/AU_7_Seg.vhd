----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2022 06:13:46 PM
-- Design Name: 
-- Module Name: AU_7_Seg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU_7_Seg is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR(3 downto 0);
           S7Seg : out STD_LOGIC_VECTOR(6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC;
           Anode : out STD_LOGIC_VECTOR(3 downto 0));
end AU_7_Seg;

architecture Behavioral of AU_7_Seg is
component LUT_16_7 
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;
component AU 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;
component Reg 
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal address0 : std_logic_vector(3 downto 0); 
begin

    AU_0 : AU 
        port map(
        A => A,
        RegSel => RegSel,
        Clk => Clk,
        S => address0,
        Zero => Zero,
        Carry => Carry );
        
    LUT_16_7_0 : LUT_16_7 
        port map(
        address => address0,
        data => S7Seg);

S_LED <= address0;
Anode <= "1110";

end Behavioral;
