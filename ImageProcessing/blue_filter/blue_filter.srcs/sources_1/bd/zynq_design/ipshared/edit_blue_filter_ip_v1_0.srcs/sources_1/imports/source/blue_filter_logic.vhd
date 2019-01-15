library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity blue_filter_logic is
  generic(
    -- Width of S_AXI data bus
    C_S_AXI_DATA_WIDTH	: integer	:= 32
  );
  port(
    clk 	    : in std_logic;
    rst         : in std_logic;
    regin   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    regout   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)
  );
end blue_filter_logic;

architecture IMP of blue_filter_logic is
begin
  process (regin)
  begin
    for k in 0 to (C_S_AXI_DATA_WIDTH - 1) loop
        if k < 8 then
            regout(k) <= regin(k);
        else
            regout(k) <= '0';
        end if;
    end loop;
  end process;
end IMP;
