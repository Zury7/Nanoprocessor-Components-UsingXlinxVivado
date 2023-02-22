----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 02:47:48 PM
-- Design Name: 
-- Module Name: Slow_Clk - Behavioral
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

entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk;

architecture Behavioral of Slow_Clk is
signal count : integer := 1;
signal clk_status : std_logic := '0';
begin
    --to generate 1Hz clock for 100Mhz input clock
    process (Clk_in) begin
        if (rising_edge(Clk_in)) then
            count <= count +1;  --increment counter
            --if (count = 50000000) then  -- count 50M pulses or half of period
            if (count = 4) then  --just for the use of simulation 
                clk_status <= not clk_status;   -- invert clock status
                Clk_out <= clk_status;
                count <= 1;        --reset counter
            end if;
        end if;
    end process;
end Behavioral;
