----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 11:30:09 AM
-- Design Name: 
-- Module Name: sound_synth - Behavioral
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

entity sound_synth is
    Port ( melody : in STD_LOGIC_VECTOR (1 downto 0);
           cnt : in STD_LOGIC_VECTOR (3 downto 0);
           relay : out STD_LOGIC);
end sound_synth;

architecture Behavioral of sound_synth is

begin
    process (cnt)
    begin       
          if melody=b"00" then
            if cnt = b"0000" then
                relay <= '1';
            elsif cnt = b"0001" then
                relay <= '0';
            elsif cnt = b"0010" then
                relay <= '1';
            elsif cnt = b"0011" then
                relay <= '0';
            elsif cnt = b"0100" then
                relay <= '1';
            elsif cnt = b"0101" then
                relay <= '0';
            elsif cnt = b"0110" then
                relay <= '1';
            elsif cnt = b"0111" then
                relay <= '0';
            elsif cnt = b"1000" then
                relay <= '1';
            elsif cnt = b"1001" then
                relay <= '0';
            elsif cnt = b"1010" then
                relay <= '1';
            elsif cnt = b"1011" then
                relay <= '0';
            elsif cnt = b"1100" then
                relay <= '1';
            elsif cnt = b"1101" then
                relay <= '0';
            elsif cnt = b"1110" then
                relay <= '1';
            else 
                relay <= '0';
            end if;
            
          elsif melody=b"01" then
                      if cnt = b"0000" then
                relay <= '1';
            elsif cnt = b"0001" then
                relay <= '1';
            elsif cnt = b"0010" then
                relay <= '0';
            elsif cnt = b"0011" then
                relay <= '0';
            elsif cnt = b"0100" then
                relay <= '1';
            elsif cnt = b"0101" then
                relay <= '1';
            elsif cnt = b"0110" then
                relay <= '0';
            elsif cnt = b"0111" then
                relay <= '0';
            elsif cnt = b"1000" then
                relay <= '1';
            elsif cnt = b"1001" then
                relay <= '1';
            elsif cnt = b"1010" then
                relay <= '0';
            elsif cnt = b"1011" then
                relay <= '0';
            elsif cnt = b"1100" then
                relay <= '1';
            elsif cnt = b"1101" then
                relay <= '1';
            elsif cnt = b"1110" then
                relay <= '0';
            else 
                relay <= '0';
            end if;
            
          elsif melody=b"10" then
                      if cnt = b"0000" then
                relay <= '1';
            elsif cnt = b"0001" then
                relay <= '1';
            elsif cnt = b"0010" then
                relay <= '1';
            elsif cnt = b"0011" then
                relay <= '1';
            elsif cnt = b"0100" then
                relay <= '0';
            elsif cnt = b"0101" then
                relay <= '0';
            elsif cnt = b"0110" then
                relay <= '0';
            elsif cnt = b"0111" then
                relay <= '0';
            elsif cnt = b"1000" then
                relay <= '1';
            elsif cnt = b"1001" then
                relay <= '1';
            elsif cnt = b"1010" then
                relay <= '1';
            elsif cnt = b"1011" then
                relay <= '1';
            elsif cnt = b"1100" then
                relay <= '0';
            elsif cnt = b"1101" then
                relay <= '0';
            elsif cnt = b"1110" then
                relay <= '0';
            else 
                relay <= '0';
            end if;
            
          elsif melody=b"11" then
                      if cnt = b"0000" then
                relay <= '0';
            elsif cnt = b"0001" then
                relay <= '0';
            elsif cnt = b"0010" then
                relay <= '0';
            elsif cnt = b"0011" then
                relay <= '0';
            elsif cnt = b"0100" then
                relay <= '1';
            elsif cnt = b"0101" then
                relay <= '1';
            elsif cnt = b"0110" then
                relay <= '1';
            elsif cnt = b"0111" then
                relay <= '1';
            elsif cnt = b"1000" then
                relay <= '0';
            elsif cnt = b"1001" then
                relay <= '0';
            elsif cnt = b"1010" then
                relay <= '0';
            elsif cnt = b"1011" then
                relay <= '0';
            elsif cnt = b"1100" then
                relay <= '1';
            elsif cnt = b"1101" then
                relay <= '1';
            elsif cnt = b"1110" then
                relay <= '1';
            else 
                relay <= '1';
            end if;
         end if;
    end process;

end Behavioral;
