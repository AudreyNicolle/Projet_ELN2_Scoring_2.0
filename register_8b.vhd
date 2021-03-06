----------------------------------------------------------------------------------
-- Company: CPE
-- Engineer: BONNET-SAINT-GEORGES Gaspard/LAPRAIS Augustin/NICOLLE Audrey/WEBER Thibaut
-- 
-- Create Date:    09:49:56 02/18/2022 
-- Design Name: 
-- Module Name:    register_8b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_8b is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0);
			  clk : in STD_LOGIC);
end register_8b;

architecture Behavioral of register_8b is
signal Q_int : STD_LOGIC_VECTOR (7 downto 0);

begin

	process(clk)
	
	begin
	
		if (rising_edge(clk)) then
			Q_int <= D;
		end if;
		
	end process;
	
	Q <= Q_int;
	
end Behavioral;

