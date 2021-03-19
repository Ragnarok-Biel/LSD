library ieee;
use ieee.std_logic_1164.all;

entity Dec2_4EnDemo is 

	port(
			SW   : in std_logic_vector(2 downto 0);
			LEDG : out std_logic_vector(3 downto 0)
		  );

end Dec2_4EnDemo;

architecture Shell of Dec2_4EnDemo is
begin

	system_core : entity work.Dec2_4En(Behavioral)
						port map(enable  => SW(2),
									inputs  => SW,
									outputs => LEDG(3 downto 0)
									);
end Shell;
