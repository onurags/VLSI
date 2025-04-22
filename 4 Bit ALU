ALU Code : 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( 
        a      : in STD_LOGIC_VECTOR (3 downto 0);
        b      : in STD_LOGIC_VECTOR (3 downto 0);
        sel    : in STD_LOGIC_VECTOR (2 downto 0);
        led_p  : out STD_LOGIC_VECTOR (3 downto 0);
        led_n  : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
begin
    -- led_n (3 downto 1) <= "111";
    led_p(3 downto 0) <= "0001";
    
    with sel select
        led_n <= 
            (not (a + b)) when "000",
            (not (a - b)) when "001",
            (not (a and b)) when "010",
            (not (a nand b)) when "011",
            (not (a xor b)) when "100",
            (not (a xnor b)) when "101",
            (not (a or b)) when "110",
            (not a) when others;
end Behavioral;


UCF Code : 

Net "led_n<0>"  loc = "p132";
Net "led_n<1>"  loc = "p131";
Net "led_n<2>"  loc = "p130";
Net "led_n<3>"  loc = "p128";

Net "led_p<0>"  loc = "p126";
Net "led_p<1>"  loc = "p133";
Net "led_p<2>"  loc = "p135";
Net "led_p<3>"  loc = "p137";

Net "b<0>"      loc = "p101";
Net "b<1>"      loc = "p100";
Net "b<2>"      loc = "p97";
Net "b<3>"      loc = "p96";

Net "a<0>"      loc = "p95";
Net "a<1>"      loc = "p94";
Net "a<2>"      loc = "p93";
Net "a<3>"      loc = "p90";

Net "sel<0>"    loc = "p87";
Net "sel<1>"    loc = "p86";
Net "sel<2>"    loc = "p85";
