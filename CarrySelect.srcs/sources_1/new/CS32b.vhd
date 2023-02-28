
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CS32b is
    Port ( 
           a,b : in STD_LOGIC_vector (31 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_vector (32 downto 0));
end CS32b;

architecture Behavioral of CS32b is
signal lsb :STD_LOGIC_vector (15 downto 0);ù
signal msb_0,msb_1,s_0,s_1 : STD_LOGIC_vector(31 downto 0)
component FA
port (a,b,cin : in STD_LOGIC;
      cout,s : out STD_LOGIC);
end component;
begin
c(0)<= cin;
FAi: for i in 0 to 32 generate
     myfa: FA port map(a(i),b(i),c(i),c(i+1),s(i));
end generate;

end Behavioral;
