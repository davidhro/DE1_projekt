

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for seven7-segment display decoder
------------------------------------------------------------
entity hex_7seg is
    port(
        hex_i : in  std_logic_vector(4 - 1 downto 0);
        seg_o : out std_logic_vector(7 - 1 downto 0)
    );
end entity hex_7seg;

------------------------------------------------------------
-- Architecture body for seven-segment display decoder
------------------------------------------------------------
architecture Behavioral of hex_7seg is
begin
    --------------------------------------------------------

    p_7seg_decoder : process(hex_i)
    begin
        case hex_i is
            when "0000" =>
                seg_o <= "0000001"; -- 0
            when "0001" =>
                seg_o <= "1001111"; -- 1
            when "0010" =>
                seg_o <= "0010010"; -- 2
            when "0011" =>
                seg_o <= "0000110"; -- 3    
            when "0100" =>
                seg_o <= "1001100"; -- 4
            when "0101" =>
                seg_o <= "0100100"; -- 5
            when "0110" =>
                seg_o <= "0100000"; -- 6 
            when "0111" =>
                seg_o <= "0001111"; -- 7       
            when "1000" =>
                seg_o <= "0000000"; -- 8 
            when others =>
                seg_o <= "0000100"; -- 9
        end case;
    end process p_7seg_decoder;

end architecture Behavioral;
