----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2022 03:28:14 PM
-- Design Name: 
-- Module Name: TB_AU - Behavioral
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
entity TB_AU is
--  Port ( );
end TB_AU;

architecture Behavioral of TB_AU is
component AU
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

SIGNAL A ,S : STD_LOGIC_VECTOR(3 downto 0) := "0000";
SIGNAL RegSel, Clk, Zero, Carry : STD_LOGIC:='0';

begin
UUT: AU PORT MAP(
    A => A,
    S => S,
    RegSel => RegSel,
    Clk => Clk,
    Zero => Zero,
    Carry => Carry
);

process
begin
    Clk <= NOT(Clk);
    wait for 2ns;
end process;
process
begin
    A <= "0010";    --'2'00332X
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "0000";    --2'0'0332X
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "0010";    --200'3'32X
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    --simulation for all other possible input combinations
 
    A <= "0000";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "0001";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "0010";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "0011";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "0100";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "0101";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "0110";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "0111";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "1000";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "1001";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "1010";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "1011";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "1100";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
        
    A <= "1101";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "1110";
    wait for 20ns;
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    A <= "1111";
    RegSel <= '1';
    wait for 20ns;
    RegSel <= '0';
    wait for 20ns;
    
    wait;
    
end process;


end Behavioral;
