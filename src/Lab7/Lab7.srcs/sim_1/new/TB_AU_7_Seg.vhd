----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2022 06:38:46 PM
-- Design Name: 
-- Module Name: TB_AU_7_Seg - Behavioral
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
entity TB_AU_7_Seg is
--  Port ( );
end TB_AU_7_Seg;
architecture Behavioral of TB_AU_7_Seg is
component AU_7_Seg 
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR(3 downto 0);
           S7Seg : out STD_LOGIC_VECTOR(6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;
signal A,S_LED :std_logic_vector(3 downto 0) := "0000";
signal S7Seg :std_logic_vector(6 downto 0) := "0000000";
signal RegSel, Clk, Carry,Zero : std_logic := '0';
begin
    uut : AU_7_Seg
    port map(
    A => A,
    S_LED => S_LED,
    RegSel => RegSel,
    S7Seg => S7Seg,
    Clk => Clk,
    Carry => Carry,
    Zero => Zero);
    process 
    begin 
        Clk <= NOT(Clk);
        wait for 2ns;
    end process;
    process
    begin
        RegSel <= '1';
        A <= "0010";  ---'2'00332X
        wait for 100ns;
        A <= "0000";  ---2'0'0332X
        wait for 100ns;
        A <= "0011";  ---200'3'32X
        wait for 100ns;
        RegSel <= '0';
        A <= "0010";  ---'2'00332X
        wait for 100ns;
        A <= "0000";  ---2'0'0332X
        wait for 100ns;
        A <= "0011";  ---200'3'32X
        wait;
    end process;
end Behavioral;
