----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Vishvadini Ravihari
-- 
-- Create Date: 05/19/2022 02:15:41 PM
-- Design Name: 
-- Module Name: Circuit2Sim - Behavioral
-- Project Name: Lab2
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

entity Circuit2Sim is
--  Port ( );
end Circuit2Sim;

architecture Behavioral of Circuit2Sim is
    COMPONENT Circuit2
        PORT(   A,B,C  : IN STD_LOGIC;
                Red,Amber,Green : OUT STD_LOGIC);
    END COMPONENT;

    signal g0,g1,g2 : STD_LOGIC;
    signal r,a,g : STD_LOGIC;
        
  
begin
UUT : Circuit2 PORT MAP(
        A => g0,
        B => g1,
        C => g2,
        Red => r,
        Amber => a,
        Green => g
    );

process
begin
--000
    g0 <= '0';
    g1 <= '0';
    g2 <= '0';
--001  
    wait for 100ns;
    g2 <= '1';
    
--010
    wait for 100ns;
    g1 <= '1';
    g2 <= '0';

--011    
    wait for 100ns;
    g2 <= '1';
--100    
    wait for 100ns;
    g0 <= '1';
    g1 <= '0';
    g2 <= '0';
--101    
    wait for 100ns;
    g2 <= '1';
--110   
    wait for 100ns;
    g1 <= '1';
    g2 <= '0';
--111   
    wait for 100ns;
    g2 <= '1';
    
    WAIT;
        
    
end process; 


end Behavioral;
