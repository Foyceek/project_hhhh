library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FourDigitDisplay is
    Port ( clk : in STD_LOGIC;
           btnc : in STD_LOGIC;
           btnl : in STD_LOGIC;
           btnr : in STD_LOGIC;
           btnu : in STD_LOGIC;
           btnd : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR(6 downto 0));
end FourDigitDisplay;

architecture Behavioral of FourDigitDisplay is

    type word_array is array(0 to 4) of STD_LOGIC_VECTOR(6 downto 0);
    constant PLAY : word_array := (
        "0011000",
        "1110001",
        "0001000",
        "1001100"
    );
    
    constant STRT : word_array := (
        "0100100",
        "1110000",
        "1111010",
        "1110000"
    );
    
    constant STOP : word_array := (
        "0100100",
        "1110000",
        "1100010",
        "0011000"
    );
    
    constant REC : word_array := (
        "1111010",
        "0110000",
        "0110001"
    );
    
    constant RST : word_array := (
        "1111010",
        "0100100",
        "1110000"
    );

    signal display_pattern : STD_LOGIC_VECTOR(6 downto 0);
    signal counter : integer range 0 to 4 := 0;

begin

rele:  process(btnc, btnl, btnr, btnu, btnd, clk ) is
    begin
        if (btnc = '1') then
            AN <= b"0111_1111";
            seg <= "0011000";
            --wait 10 ns
            AN <= b"1011_1111";
            seg <= "1110001";
            --wait 10 ns
            
        elsif  (btnl = '1') then
            seg <= word_array(1);
        elsif  (btnr = '1') then
            seg <= word_array(2);
        elsif  (btnu = '1') then
            seg <= word_array(3);
        else  (btnd = '1') then
            seg <= word_array(4);
        end if
    end process;