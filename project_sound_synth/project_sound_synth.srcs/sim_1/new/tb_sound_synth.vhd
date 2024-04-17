-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 17.4.2024 09:55:39 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_sound_synth is
end tb_sound_synth;

architecture tb of tb_sound_synth is

    component sound_synth
        port (melody : in std_logic_vector (1 downto 0);
              cnt    : in std_logic_vector (3 downto 0);
              relay  : out std_logic);
    end component;

    signal melody : std_logic_vector (1 downto 0);
    signal cnt    : std_logic_vector (3 downto 0);
    signal relay  : std_logic;

begin

    dut : sound_synth
    port map (melody => melody,
              cnt    => cnt,
              relay  => relay);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        melody <= b"11";
        cnt <= b"0000";
        wait for 10 ns;
        cnt <= b"0001";
        wait for 10 ns;
        cnt <= b"0010";
        wait for 10 ns;
        cnt <= b"0011";
        wait for 10 ns;
        cnt <= b"0100";
        wait for 10 ns;
        cnt <= b"0101";
        wait for 10 ns;
        cnt <= b"0110";
        wait for 10 ns;
        cnt <= b"0111";
        wait for 10 ns;
        cnt <= b"1000";
        wait for 10 ns;
        cnt <= b"1001";
        wait for 10 ns;
        cnt <= b"1010";
        wait for 10 ns;
        cnt <= b"1011";
        wait for 10 ns;
        cnt <= b"1100";
        wait for 10 ns;
        cnt <= b"1101";
        wait for 10 ns;
        cnt <= b"1110";
        wait for 10 ns;
        cnt <= b"1111";
        wait for 1000 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_sound_synth of tb_sound_synth is
    for tb
    end for;
end cfg_tb_sound_synth;