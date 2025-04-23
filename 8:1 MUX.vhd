8:1 MUX : 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port (
        sel      : in STD_LOGIC_VECTOR (2 downto 0);
        inp      : in STD_LOGIC_VECTOR (7 downto 0);
        DIS      : out STD_LOGIC_VECTOR (1 downto 0);
        led_p    : out STD_LOGIC_VECTOR (3 downto 0);
        led_n    : out STD_LOGIC_VECTOR (3 downto 0);
        SEG      : out STD_LOGIC_VECTOR (6 downto 0)
    );
end mux;

architecture Behavioral of mux is
begin
    led_n(3 downto 1) <= "111";
    led_p(3 downto 0) <= "0001";
    DIS <= "10";
    
    with sel select
        led_n(0) <= (not inp(0)) when "000",
                    (not inp(1)) when "001",
                    (not inp(2)) when "010",
                    (not inp(3)) when "011",
                    (not inp(4)) when "100",
                    (not inp(5)) when "101",
                    (not inp(6)) when "110",
                    (not inp(7)) when "111",
                    'Z' when others;

    -- Display
    with sel select
        SEG <= "1000000" when "000",
               "1111001" when "001",
               "0100100" when "010",
               "0110000" when "011",
               "0011001" when "100",
               "0010010" when "101",
               "0000010" when "110",
               "1111000" when "111",
               "0000000" when others;
end Behavioral;


UCF Code : 

Net "DIS<0>"   loc = "p141";
Net "DIS<1>"   loc = "p144";

Net "SEG<0>"   loc = "p148";
Net "SEG<1>"   loc = "p147";
Net "SEG<2>"   loc = "p146";
Net "SEG<3>"   loc = "p143";
Net "SEG<4>"   loc = "p140";
Net "SEG<5>"   loc = "p138";
Net "SEG<6>"   loc = "p139";

Net "led_n<0>" loc = "p132";
Net "led_n<1>" loc = "p131";
Net "led_n<2>" loc = "p130";
Net "led_n<3>" loc = "p128";

Net "led_p<0>" loc = "p126";
Net "led_p<1>" loc = "p133";
Net "led_p<2>" loc = "p135";
Net "led_p<3>" loc = "p137";

Net "inp<0>"   loc = "p101";
Net "inp<1>"   loc = "p100";
Net "inp<2>"   loc = "p97";
Net "inp<3>"   loc = "p96";
Net "inp<4>"   loc = "p95";
Net "inp<5>"   loc = "p94";
Net "inp<6>"   loc = "p93";
Net "inp<7>"   loc = "p90";

Net "sel<0>"   loc = "p87";
Net "sel<1>"   loc = "p86";
Net "sel<2>"   loc = "p85";
