
-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 21.4.2024 15:33:13 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_clock_switch is
end tb_clock_switch;

architecture tb of tb_clock_switch is

    component clock_switch
        port (inp  : in std_logic_vector (1 downto 0);
              clk1 : out std_logic;
              clk2 : out std_logic;
              clk3 : out std_logic;
              clk4 : out std_logic);
    end component;

    signal inp  : std_logic_vector (1 downto 0);
    signal clk1 : std_logic;
    signal clk2 : std_logic;
    signal clk3 : std_logic;
    signal clk4 : std_logic;

begin

    dut : clock_switch
    port map (inp  => inp,
              clk1 => clk1,
              clk2 => clk2,
              clk3 => clk3,
              clk4 => clk4);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        
        inp<= b"00";
        wait for 200 ns;
        inp<= b"01";
        wait for 200 ns;
        inp<= b"10";
        wait for 200 ns;
        inp<= b"11";
        wait for 200 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_clock_switch of tb_clock_switch is
    for tb
    end for;
end cfg_tb_clock_switch;
