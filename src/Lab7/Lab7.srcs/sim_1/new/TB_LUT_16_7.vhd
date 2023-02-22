----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2022 05:35:21 PM
-- Design Name: 
-- Module Name: TB_LUT_16_7 - Behavioral
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
entity TB_LUT_16_7 is
--  Port ( );
end TB_LUT_16_7;
architecture Behavioral of TB_LUT_16_7 is
component LUT_16_7 
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0) );
end component;
signal address : STD_LOGIC_VECTOR (3 downto 0);
signal data :  STD_LOGIC_VECTOR (6 downto 0);
begin
uut : LUT_16_7 port map (
    address => address,
    data => data );
process
    begin
    address <= "0000";  ---0
    wait for 50ns;
    address <= "0001";  ---1
    wait for 50ns;
    address <= "0010";  ---2
    wait for 50ns;
    address <= "0011";  ---3
    wait for 50ns;
    address <= "0100";  ---4
    wait for 50ns;
    address <= "0101";  ---5
    wait for 50ns;
    address <= "0110";  ---6
    wait for 50ns;
    address <= "0111";  ---7
    wait for 50ns;
    address <= "1000";  ---8
    wait for 50ns;
    address <= "1001";  ---9
    wait for 50ns;
    address <= "1010";  ---a
    wait for 50ns;
    address <= "1011";  ---b
    wait for 50ns;
    address <= "1100";  ---c
    wait for 50ns;
    address <= "1101";  ---d
    wait for 50ns;
    address <= "1110";  ---e
    wait for 50ns;
    address <= "1111";  ---f
    wait for 50ns;
    address <= "0010";
    wait;
    end process;

--simulation for the input combinations in the index number 200332X
    --process
    --begin
    --address <= "0010";  ---'2'00332X
    --wait for 100ns;
    --address <= "0000";  ---2'0'0332X
    --wait for 100ns;
    --address <= "0011";   ---200'3'32X
    --wait;
    --end process;
end Behavioral;
