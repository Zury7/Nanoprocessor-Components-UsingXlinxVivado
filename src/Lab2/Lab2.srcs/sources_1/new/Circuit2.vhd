----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2022 02:22:07 PM
-- Design Name: 
-- Module Name: Circuit2 - Behavioral
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

entity Circuit2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Red : out STD_LOGIC;
           Amber : out STD_LOGIC;
           Green : out STD_LOGIC);
end Circuit2;

architecture Behavioral of Circuit2 is

begin
Red <= (((NOT A) AND (NOT B)) OR ( A AND (NOT B) AND (NOT C)) OR ((NOT A) AND (NOT C) AND B));
Amber <= ( (A AND B AND (NOT C)) OR ((NOT A) AND B AND C) OR (A AND (NOT B) AND C));
Green <= A AND B AND C;
 
end Behavioral;
