----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2024 11:50:22 AM
-- Design Name: 
-- Module Name: clock_switch - Behavioral
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

entity clock_switch is
    Port ( inp : in STD_LOGIC_VECTOR (1 downto 0);
           clk1 : out STD_LOGIC;
           clk2 : out STD_LOGIC;
           clk3 : out STD_LOGIC;
           clk4 : out STD_LOGIC);
end clock_switch;

architecture Behavioral of clock_switch is

begin

process (inp)
begin       
          if inp=b"00" then
                clk1 <= '0';
                clk2 <= '1';
                clk3 <= '1';
                clk4 <= '1';             
          elsif inp=b"01" then
                clk1 <= '1';
                clk2 <= '0';
                clk3 <= '1';
                clk4 <= '1';                 
          elsif inp=b"10" then
                clk1 <= '1';
                clk2 <= '1';
                clk3 <= '0';
                clk4 <= '1'; 
          else
                clk1 <= '1';
                clk2 <= '1';
                clk3 <= '1';
                clk4 <= '0'; 
         end if;
end process;

end Behavioral;
