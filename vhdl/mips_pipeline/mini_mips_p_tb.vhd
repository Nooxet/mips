library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

library work;

use work.records_pkg.all;
use work.subtypes_pkg.all;
use work.constants_pkg.all;
use work.components_pkg.all;

entity mini_mips_p_tb is
end;

architecture testbench of mini_mips_p_tb is

  component mini_mips_P
      port (
          clk         : inout  std_logic;
          rst_n       : inout  std_logic
          --alu_result  : out std_logic_vector(15 downto 0)
		 );

  end component;
  
  
  signal clk: std_logic;
  signal rst_n: std_logic;
  --signal alu_result : std_logic_vector(15 downto 0);
 
  constant clk_period : time := 10ns;

begin
	-- mips with pagds
  uut: mini_mips_P
  	port map ( 
		clk         => clk,
        rst_n       => rst_n
        --alu_result => alu_result
	);

 
  clk_proc: process
  begin
    clk <= '1';
    wait for clk_period/2;
    clk <= '0';
    wait for clk_period/2;
  end process;

  
  WaveGen_Proc: process
  begin
    rst_n <= '0';
    wait for 20*clk_period+clk_period/2;
    rst_n <= '1';
    
	-- well, not much to do here...

    wait;
    

  end process;

end;
