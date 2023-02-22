----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2022 04:07:03 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is
    COMPONENT HA PORT(
        A,B : IN STD_LOGIC;
        C,S : OUT STD_LOGIC);
    END COMPONENT;
    
    SIGNAL A,B : std_logic;
    SIGNAL C,S : std_logic;

begin
    UUT: HA PORT MAP(
        A => A,
        B => B,
        C => C,
        S => S);
    PROCESS
    BEGIN
        A <= '0';
        B <= '0';
        WAIT FOR 100ns;
        B<= '1';
        WAIT FOR 100ns;
        A <= '1';
        B <= '0';
        WAIT FOR 100ns;
        B <= '1';
        WAIT;
    END PROCESS;
end Behavioral;
