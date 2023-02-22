----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 03:34:42 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1 PORT (
           D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
END COMPONENT;
    SIGNAL D : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL S : STD_LOGIC_VECTOR (2 downto 0);
    SIGNAL EN : STD_LOGIC;
    SIGNAL Y : STD_LOGIC;

begin
UUT : Mux_8_to_1 PORT MAP(
    D =>D,
    S =>S,
    EN => EN,
    Y => Y );
    
    PROCESS
    BEGIN
    
    EN <= '1';
    D <= "00110010"; -- 2003'32'
   
    S<= "000";
    WAIT FOR 100ns;
    S <= "001";
    WAIT FOR 100ns;
    S <= "010";
    WAIT FOR 100ns;
    S <= "011";
    WAIT FOR 100ns;
    S <= "100";
    WAIT FOR 100ns;
    S <= "101";
    WAIT FOR 100ns;
    S <= "110";
    WAIT FOR 100ns;
    S <= "111";
    
    --Input combinations as per the index number 200332X
    S<= "000";  --20'0'332X
    WAIT FOR 100ns;
    S <= "010"; --20033'2'X
    WAIT FOR 100ns;
    S <= "011"; --2003'3'2X
    
    
    WAIT;
    END PROCESS;

end Behavioral;
