-------------------------------------------------------------------------------
--
-- black_white_filter_logic package
--
-------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--
-------------------------------------------------------------------------------
--
package black_white_filter_logic_pkg is

	component black_white_filter_logic is

	  generic(
		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		THRESHOLD			: integer	:= 128
	  );
	  port(
		clk 	: in std_logic;
		reg001in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg002in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg003in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg004in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg005in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg006in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg007in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg008in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg009in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg010in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg011in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg012in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg013in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg014in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg015in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg016in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg017in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg018in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg019in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg020in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg021in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg022in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg023in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg024in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg025in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg026in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg027in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg028in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg029in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg030in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg031in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg032in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg033in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg034in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg035in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg036in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg037in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg038in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg039in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg040in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg041in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg042in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg043in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg044in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg045in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg046in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg047in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg048in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg049in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg050in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg051in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg052in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg053in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg054in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg055in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg056in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg057in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg058in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg059in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg060in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg061in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg062in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg063in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg064in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg065in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg066in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg067in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg068in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg069in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg070in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg071in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg072in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg073in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg074in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg075in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg076in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg077in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg078in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg079in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg080in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg081in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg082in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg083in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg084in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg085in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg086in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg087in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg088in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg089in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg090in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg091in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg092in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg093in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg094in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg095in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg096in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg097in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg098in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg099in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg100in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg101in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg102in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg103in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg104in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg105in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg106in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg107in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg108in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg109in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg110in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg111in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg112in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg113in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg114in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg115in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg116in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg117in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg118in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg119in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg120in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg121in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg122in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg123in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg124in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg125in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg126in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg127in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg128in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg129in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg130in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg131in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg132in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg133in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg134in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg135in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg136in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg137in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg138in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg139in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg140in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg141in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg142in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg143in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg144in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg145in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg146in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg147in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg148in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg149in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg150in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg151in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg152in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg153in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg154in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg155in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg156in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg157in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg158in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg159in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg160in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg161in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg162in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg163in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg164in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg165in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg166in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg167in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg168in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg169in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg170in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg171in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg172in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg173in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg174in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg175in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg176in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg177in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg178in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg179in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg180in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg181in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg182in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg183in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg184in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg185in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg186in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg187in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg188in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg189in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg190in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg191in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg192in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg193in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg194in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg195in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg196in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg197in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg198in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg199in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg200in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg201in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg202in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg203in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg204in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg205in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg206in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg207in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg208in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg209in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg210in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg211in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg212in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg213in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg214in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg215in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg216in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg217in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg218in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg219in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg220in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg221in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg222in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg223in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg224in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg225in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg226in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg227in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg228in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg229in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg230in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg231in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg232in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg233in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg234in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg235in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg236in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg237in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg238in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg239in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg240in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg241in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg242in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg243in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg244in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg245in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg246in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg247in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg248in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg249in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg250in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg251in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg252in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg253in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg254in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg255in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg256in   	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg001out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg002out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg003out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg004out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg005out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg006out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg007out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg008out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg009out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg010out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg011out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg012out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg013out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg014out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg015out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg016out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg017out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg018out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg019out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg020out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg021out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg022out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg023out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg024out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg025out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg026out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg027out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg028out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg029out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg030out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg031out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg032out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg033out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg034out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg035out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg036out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg037out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg038out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg039out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg040out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg041out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg042out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg043out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg044out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg045out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg046out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg047out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg048out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg049out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg050out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg051out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg052out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg053out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg054out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg055out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg056out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg057out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg058out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg059out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg060out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg061out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg062out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg063out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg064out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg065out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg066out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg067out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg068out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg069out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg070out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg071out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg072out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg073out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg074out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg075out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg076out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg077out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg078out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg079out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg080out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg081out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg082out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg083out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg084out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg085out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg086out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg087out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg088out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg089out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg090out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg091out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg092out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg093out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg094out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg095out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg096out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg097out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg098out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg099out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg100out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg101out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg102out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg103out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg104out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg105out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg106out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg107out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg108out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg109out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg110out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg111out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg112out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg113out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg114out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg115out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg116out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg117out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg118out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg119out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg120out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg121out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg122out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg123out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg124out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg125out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg126out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg127out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg128out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg129out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg130out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg131out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg132out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg133out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg134out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg135out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg136out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg137out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg138out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg139out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg140out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg141out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg142out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg143out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg144out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg145out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg146out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg147out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg148out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg149out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg150out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg151out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg152out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg153out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg154out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg155out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg156out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg157out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg158out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg159out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg160out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg161out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg162out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg163out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg164out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg165out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg166out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg167out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg168out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg169out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg170out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg171out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg172out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg173out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg174out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg175out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg176out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg177out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg178out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg179out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg180out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg181out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg182out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg183out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg184out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg185out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg186out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg187out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg188out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg189out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg190out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg191out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg192out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg193out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg194out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg195out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg196out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg197out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg198out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg199out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg200out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg201out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg202out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg203out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg204out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg205out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg206out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg207out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg208out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg209out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg210out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg211out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg212out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg213out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg214out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg215out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg216out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg217out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg218out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg219out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg220out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg221out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg222out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg223out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg224out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg225out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg226out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg227out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg228out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg229out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg230out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg231out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg232out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg233out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg234out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg235out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg236out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg237out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg238out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg239out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg240out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg241out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg242out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg243out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg244out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg245out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg246out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg247out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg248out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg249out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg250out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg251out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg252out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg253out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg254out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg255out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		reg256out   	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)
	  );
	
	end component black_white_filter_logic;
	
end black_white_filter_logic_pkg;

