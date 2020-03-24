library IEEE;

use IEEE.std_logic_1164.all;

entity bcdto7s is
    port (
        b : in  std_logic_vector(3 downto 0);
        s : out std_logic_vector(6 downto 0)
    );
end bcdto7s;

architecture bcdto7s_arc of bcdto7s is
begin
    process(b)
    begin
        case() is
               when "0000" => 
                   s <= "0000001";
                   .
                   .
                   .
               when others =>
                   s <= "0000000";
           end case;   
    end process
end bcdto7s_arc;
