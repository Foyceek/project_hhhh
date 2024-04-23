-------------------------------------------------
--! @brief Top level implementation for binary counter(s)
--! @version 1.1
--! @copyright (c) 2019-2024 Tomas Fryza, MIT license
--!
--! This VHDL file implements a top-level design for a counter
--! display system. It consists of two simple counters: a 4-bit
--! counter counting at 250 ms and a 16-bit counter counting at
--! 2 ms. The counts are displayed on a 7-segment display, and
--! LEDs. Clock enables are used to control the counting frequency.
--!
--! Developed using TerosHDL, Vivado 2023.2, and EDA Playground.
--! Tested on Nexys A7-50T board and xc7a50ticsg324-1L FPGA.
-------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;

-------------------------------------------------

entity top_level is
    port (
        SW        : in    std_logic_vector(4 downto 0);
        CLK100MHZ : in    std_logic;                     --! Main clock
        LED       : out   std_logic_vector(4 downto 0);  --! Show 16-bit counter value
        CA        : out   std_logic;                     --! Cathode of segment A
        CB        : out   std_logic;                     --! Cathode of segment B
        CC        : out   std_logic;                     --! Cathode of segment C
        CD        : out   std_logic;                     --! Cathode of segment D
        CE        : out   std_logic;                     --! Cathode of segment E
        CF        : out   std_logic;                     --! Cathode of segment F
        CG        : out   std_logic;                     --! Cathode of segment G
        DP        : out   std_logic;                     --! Decimal point
        AN        : out   std_logic_vector(7 downto 0);  --! Common anodes of all on-board displays
        JC        : out    std_logic;
        LED16_G   : out   std_logic;
        LED17_B   : out   std_logic;
        LED16_R   : out   std_logic
    );
end entity top_level;

-------------------------------------------------

architecture behavioral of top_level is
    -- Component declaration for clock enable
    component clock_enable is
        generic (
            N_PERIODS : integer
        );
        port (
            clk   : in    std_logic;
            rst   : in    std_logic;
            pulse : out   std_logic
        );
    end component;
    
    component clock_switch is

        port (
            inp : in STD_LOGIC_VECTOR (1 downto 0);
           clk1 : out STD_LOGIC;
           clk2 : out STD_LOGIC;
           clk3 : out STD_LOGIC;
           clk4 : out STD_LOGIC);
    end component;

    -- Component declaration for simple counter
    component simple_counter is
        generic (
            N_BITS : integer
        );
        port (
            clk   : in    std_logic;
            rst   : in    std_logic;
            en1   : in    std_logic;
            en2   : in    std_logic;
            en3   : in    std_logic;
            en4    : in    std_logic; 
            blue  : out    std_logic;
            green  : out    std_logic;
            count : out   std_logic_vector( 3 downto 0)
        );
    end component;

    component sound_synth is
        port ( melody : in STD_LOGIC_VECTOR (1 downto 0);
           cnt : in STD_LOGIC_VECTOR (3 downto 0);
           relay : out STD_LOGIC
        
          );
    end component;
    -- Component declaration for bin2seg
    component bin2seg is
        port (
            bin   : in    std_logic_vector(1 downto 0);
            seg   : out   std_logic_vector(6 downto 0)
        );
    end component;

    -- Local signals for first counter: 4-bit @ 250 ms
    signal sig_en_1000ms   : std_logic;                    --! Clock enable signal for 4-bit counter
    signal sig_en_500ms   : std_logic;
    signal sig_en_250ms   : std_logic;
    signal sig_en_100ms   : std_logic;
    signal switch1   : std_logic;
    signal switch2   : std_logic;
    signal switch3   : std_logic;
    signal switch4   : std_logic;
--    signal sig_count_4bit : std_logic_vector(3 downto 0); --! 4-bit counter value

    -- Local signal for second counter: 16-bit @ 2 ms
    signal sig_count : std_logic_vector(3 downto 0); --! Clock enable signal for 16-bit counter
begin

    -- Component instantiation of clock enable for 250 ms
    clk_en1 : component clock_enable
        generic map (
            N_PERIODS => 100_000_000
        )
        port map (
            clk   => CLK100MHZ,
            rst   => switch1,
            pulse => sig_en_1000ms
        );
        
         clk_en2 : component clock_enable
        generic map (
            N_PERIODS => 50_000_000
        )
        port map (
            clk   => CLK100MHZ,
            rst   => switch2,
            pulse => sig_en_500ms
        );
        
         clk_en3 : component clock_enable
        generic map (
            N_PERIODS => 25_000_000
        )
        port map (
            clk   => CLK100MHZ,
            rst   => switch3,
            pulse => sig_en_250ms
        );
        
         clk_en4 : component clock_enable
        generic map (
            N_PERIODS => 10_000_000
        )
        port map (
            clk   => CLK100MHZ,
            rst   => switch4,
            pulse => sig_en_100ms
        );
        
    switch : component clock_switch
        port map (
           inp(0) =>SW(3),
           inp(1) =>SW(4),
           clk1 =>switch1,
           clk2  =>switch2,
           clk3  =>switch3,
           clk4  =>switch4
        );

    sound : component sound_synth
        port map (
        melody(0) => SW(0),
        melody(1) => SW(1),
        cnt => sig_count,
        relay => JC
        );
            -- Component instantiation of 4-bit simple counter
    counter : component simple_counter
        generic map (
            N_BITS => 4
        )
        port map (
            clk   => CLK100MHZ,
            rst   => SW(2),
            en1    => sig_en_1000ms,
            en2    => sig_en_500ms,
            en3    => sig_en_250ms,
            en4    => sig_en_100ms,
            blue    => LED17_B,
            green    => LED16_G,
            count => sig_count
        );

    -- Component instantiation of bin2seg
    display : component bin2seg
        port map (
            bin(0)    => SW(0),
            bin(1)    => SW(1),
            seg(6) => CA,
            seg(5) => CB,
            seg(4) => CC,
            seg(3) => CD,
            seg(2) => CE,
            seg(1) => CF,
            seg(0) => CG
        );

    -- Turn off decimal point
    DP <= '1';

    -- Set display position
    AN <= b"1111_1110";

LED16_R <= SW(2);
LED(0) <= SW(0);
LED(1) <= SW(1);
LED(2) <= SW(2);
LED(3) <= SW(3);
LED(4) <= SW(4);

end architecture behavioral;