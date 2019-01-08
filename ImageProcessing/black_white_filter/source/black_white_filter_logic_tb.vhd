-------------------------------------------------------------------------------
--
-- black_white_filter_logic Testbench
--
-------------------------------------------------------------------------------
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.black_white_filter_logic_pkg.all;


--  A testbench has no ports.
entity black_white_filter_logic_tb is
end black_white_filter_logic_tb;
--
-------------------------------------------------------------------------------
--
architecture beh of black_white_filter_logic_tb is

	--  Specifies which entity is bound with the component.
	for black_white_filter_logic_0: black_white_filter_logic use entity work.black_white_filter_logic;	

	constant clk_period : time := 1 ns;
	constant DATA_WIDTH : integer := 32;
	constant THRESHOLD	: integer := 128
	
	signal Clk : std_logic := '0';
	signal testdata1_in		:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata2_in		:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata3_in		:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata4_in		:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata1_out	:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata2_out	:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata3_out	:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal testdata4_out	:	std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
begin

	--  Component instantiation.
	black_white_filter_logic_0: black_white_filter_logic
		generic map(
			C_S_AXI_DATA_WIDTH	=> DATA_WIDTH,
			THRESHOLD			=> THRESHOLD
		)
		port map (
			Clk => Clk,
			reg001in	=>	testdata1_in,
			reg002in   	=>	testdata2_in,
			reg003in   	=>	testdata3_in,
			reg004in   	=>	testdata4_in,
			reg005in   	=>	open,
			reg006in   	=>	open,
			reg007in   	=>	open,
			reg008in   	=>	open,
			reg009in   	=>	open,
			reg010in   	=>	open,
			reg011in   	=>	open,
			reg012in   	=>	open,
			reg013in   	=>	open,
			reg014in   	=>	open,
			reg015in   	=>	open,
			reg016in   	=>	open,
			reg017in   	=>	open,
			reg018in   	=>	open,
			reg019in   	=>	open,
			reg020in   	=>	open,
			reg021in   	=>	open,
			reg022in   	=>	open,
			reg023in   	=>	open,
			reg024in   	=>	open,
			reg025in   	=>	open,
			reg026in   	=>	open,
			reg027in   	=>	open,
			reg028in   	=>	open,
			reg029in   	=>	open,
			reg030in   	=>	open,
			reg031in   	=>	open,
			reg032in   	=>	open,
			reg033in   	=>	open,
			reg034in   	=>	open,
			reg035in   	=>	open,
			reg036in   	=>	open,
			reg037in   	=>	open,
			reg038in   	=>	open,
			reg039in   	=>	open,
			reg040in   	=>	open,
			reg041in   	=>	open,
			reg042in   	=>	open,
			reg043in   	=>	open,
			reg044in   	=>	open,
			reg045in   	=>	open,
			reg046in   	=>	open,
			reg047in   	=>	open,
			reg048in   	=>	open,
			reg049in   	=>	open,
			reg050in   	=>	open,
			reg051in   	=>	open,
			reg052in   	=>	open,
			reg053in   	=>	open,
			reg054in   	=>	open,
			reg055in   	=>	open,
			reg056in   	=>	open,
			reg057in   	=>	open,
			reg058in   	=>	open,
			reg059in   	=>	open,
			reg060in   	=>	open,
			reg061in   	=>	open,
			reg062in   	=>	open,
			reg063in   	=>	open,
			reg064in   	=>	open,
			reg065in   	=>	open,
			reg066in   	=>	open,
			reg067in   	=>	open,
			reg068in   	=>	open,
			reg069in   	=>	open,
			reg070in   	=>	open,
			reg071in   	=>	open,
			reg072in   	=>	open,
			reg073in   	=>	open,
			reg074in   	=>	open,
			reg075in   	=>	open,
			reg076in   	=>	open,
			reg077in   	=>	open,
			reg078in   	=>	open,
			reg079in   	=>	open,
			reg080in   	=>	open,
			reg081in   	=>	open,
			reg082in   	=>	open,
			reg083in   	=>	open,
			reg084in   	=>	open,
			reg085in   	=>	open,
			reg086in   	=>	open,
			reg087in   	=>	open,
			reg088in   	=>	open,
			reg089in   	=>	open,
			reg090in   	=>	open,
			reg091in   	=>	open,
			reg092in   	=>	open,
			reg093in   	=>	open,
			reg094in   	=>	open,
			reg095in   	=>	open,
			reg096in   	=>	open,
			reg097in   	=>	open,
			reg098in   	=>	open,
			reg099in   	=>	open,
			reg100in   	=>	open,
			reg101in   	=>	open,
			reg102in   	=>	open,
			reg103in   	=>	open,
			reg104in   	=>	open,
			reg105in   	=>	open,
			reg106in   	=>	open,
			reg107in   	=>	open,
			reg108in   	=>	open,
			reg109in   	=>	open,
			reg110in   	=>	open,
			reg111in   	=>	open,
			reg112in   	=>	open,
			reg113in   	=>	open,
			reg114in   	=>	open,
			reg115in   	=>	open,
			reg116in   	=>	open,
			reg117in   	=>	open,
			reg118in   	=>	open,
			reg119in   	=>	open,
			reg120in   	=>	open,
			reg121in   	=>	open,
			reg122in   	=>	open,
			reg123in   	=>	open,
			reg124in   	=>	open,
			reg125in   	=>	open,
			reg126in   	=>	open,
			reg127in   	=>	open,
			reg128in   	=>	open,
			reg129in   	=>	open,
			reg130in   	=>	open,
			reg131in   	=>	open,
			reg132in   	=>	open,
			reg133in   	=>	open,
			reg134in   	=>	open,
			reg135in   	=>	open,
			reg136in   	=>	open,
			reg137in   	=>	open,
			reg138in   	=>	open,
			reg139in   	=>	open,
			reg140in   	=>	open,
			reg141in   	=>	open,
			reg142in   	=>	open,
			reg143in   	=>	open,
			reg144in   	=>	open,
			reg145in   	=>	open,
			reg146in   	=>	open,
			reg147in   	=>	open,
			reg148in   	=>	open,
			reg149in   	=>	open,
			reg150in   	=>	open,
			reg151in   	=>	open,
			reg152in   	=>	open,
			reg153in   	=>	open,
			reg154in   	=>	open,
			reg155in   	=>	open,
			reg156in   	=>	open,
			reg157in   	=>	open,
			reg158in   	=>	open,
			reg159in   	=>	open,
			reg160in   	=>	open,
			reg161in   	=>	open,
			reg162in   	=>	open,
			reg163in   	=>	open,
			reg164in   	=>	open,
			reg165in   	=>	open,
			reg166in   	=>	open,
			reg167in   	=>	open,
			reg168in   	=>	open,
			reg169in   	=>	open,
			reg170in   	=>	open,
			reg171in   	=>	open,
			reg172in   	=>	open,
			reg173in   	=>	open,
			reg174in   	=>	open,
			reg175in   	=>	open,
			reg176in   	=>	open,
			reg177in   	=>	open,
			reg178in   	=>	open,
			reg179in   	=>	open,
			reg180in   	=>	open,
			reg181in   	=>	open,
			reg182in   	=>	open,
			reg183in   	=>	open,
			reg184in   	=>	open,
			reg185in   	=>	open,
			reg186in   	=>	open,
			reg187in   	=>	open,
			reg188in   	=>	open,
			reg189in   	=>	open,
			reg190in   	=>	open,
			reg191in   	=>	open,
			reg192in   	=>	open,
			reg193in   	=>	open,
			reg194in   	=>	open,
			reg195in   	=>	open,
			reg196in   	=>	open,
			reg197in   	=>	open,
			reg198in   	=>	open,
			reg199in   	=>	open,
			reg200in   	=>	open,
			reg201in   	=>	open,
			reg202in   	=>	open,
			reg203in   	=>	open,
			reg204in   	=>	open,
			reg205in   	=>	open,
			reg206in   	=>	open,
			reg207in   	=>	open,
			reg208in   	=>	open,
			reg209in   	=>	open,
			reg210in   	=>	open,
			reg211in   	=>	open,
			reg212in   	=>	open,
			reg213in   	=>	open,
			reg214in   	=>	open,
			reg215in   	=>	open,
			reg216in   	=>	open,
			reg217in   	=>	open,
			reg218in   	=>	open,
			reg219in   	=>	open,
			reg220in   	=>	open,
			reg221in   	=>	open,
			reg222in   	=>	open,
			reg223in   	=>	open,
			reg224in   	=>	open,
			reg225in   	=>	open,
			reg226in   	=>	open,
			reg227in   	=>	open,
			reg228in   	=>	open,
			reg229in   	=>	open,
			reg230in   	=>	open,
			reg231in   	=>	open,
			reg232in   	=>	open,
			reg233in   	=>	open,
			reg234in   	=>	open,
			reg235in   	=>	open,
			reg236in   	=>	open,
			reg237in   	=>	open,
			reg238in   	=>	open,
			reg239in   	=>	open,
			reg240in   	=>	open,
			reg241in   	=>	open,
			reg242in   	=>	open,
			reg243in   	=>	open,
			reg244in   	=>	open,
			reg245in   	=>	open,
			reg246in   	=>	open,
			reg247in   	=>	open,
			reg248in   	=>	open,
			reg249in   	=>	open,
			reg250in   	=>	open,
			reg251in   	=>	open,
			reg252in   	=>	open,
			reg253in   	=>	open,
			reg254in   	=>	open,
			reg255in   	=>	open,
			reg256in   	=>	open,
			reg001out   =>	testdata1_out,
			reg002out   =>	testdata2_out,
			reg003out   =>	testdata3_out,
			reg004out   =>	testdata4_out,
			reg005out   =>	open,
			reg006out   =>	open,
			reg007out   =>	open,
			reg008out   =>	open,
			reg009out   =>	open,
			reg010out   =>	open,
			reg011out   =>	open,
			reg012out   =>	open,
			reg013out   =>	open,
			reg014out   =>	open,
			reg015out   =>	open,
			reg016out   =>	open,
			reg017out   =>	open,
			reg018out   =>	open,
			reg019out   =>	open,
			reg020out   =>	open,
			reg021out   =>	open,
			reg022out   =>	open,
			reg023out   =>	open,
			reg024out   =>	open,
			reg025out   =>	open,
			reg026out   =>	open,
			reg027out   =>	open,
			reg028out   =>	open,
			reg029out   =>	open,
			reg030out   =>	open,
			reg031out   =>	open,
			reg032out   =>	open,
			reg033out   =>	open,
			reg034out   =>	open,
			reg035out   =>	open,
			reg036out   =>	open,
			reg037out   =>	open,
			reg038out   =>	open,
			reg039out   =>	open,
			reg040out   =>	open,
			reg041out   =>	open,
			reg042out   =>	open,
			reg043out   =>	open,
			reg044out   =>	open,
			reg045out   =>	open,
			reg046out   =>	open,
			reg047out   =>	open,
			reg048out   =>	open,
			reg049out   =>	open,
			reg050out   =>	open,
			reg051out   =>	open,
			reg052out   =>	open,
			reg053out   =>	open,
			reg054out   =>	open,
			reg055out   =>	open,
			reg056out   =>	open,
			reg057out   =>	open,
			reg058out   =>	open,
			reg059out   =>	open,
			reg060out   =>	open,
			reg061out   =>	open,
			reg062out   =>	open,
			reg063out   =>	open,
			reg064out   =>	open,
			reg065out   =>	open,
			reg066out   =>	open,
			reg067out   =>	open,
			reg068out   =>	open,
			reg069out   =>	open,
			reg070out   =>	open,
			reg071out   =>	open,
			reg072out   =>	open,
			reg073out   =>	open,
			reg074out   =>	open,
			reg075out   =>	open,
			reg076out   =>	open,
			reg077out   =>	open,
			reg078out   =>	open,
			reg079out   =>	open,
			reg080out   =>	open,
			reg081out   =>	open,
			reg082out   =>	open,
			reg083out   =>	open,
			reg084out   =>	open,
			reg085out   =>	open,
			reg086out   =>	open,
			reg087out   =>	open,
			reg088out   =>	open,
			reg089out   =>	open,
			reg090out   =>	open,
			reg091out   =>	open,
			reg092out   =>	open,
			reg093out   =>	open,
			reg094out   =>	open,
			reg095out   =>	open,
			reg096out   =>	open,
			reg097out   =>	open,
			reg098out   =>	open,
			reg099out   =>	open,
			reg100out   =>	open,
			reg101out   =>	open,
			reg102out   =>	open,
			reg103out   =>	open,
			reg104out   =>	open,
			reg105out   =>	open,
			reg106out   =>	open,
			reg107out   =>	open,
			reg108out   =>	open,
			reg109out   =>	open,
			reg110out   =>	open,
			reg111out   =>	open,
			reg112out   =>	open,
			reg113out   =>	open,
			reg114out   =>	open,
			reg115out   =>	open,
			reg116out   =>	open,
			reg117out   =>	open,
			reg118out   =>	open,
			reg119out   =>	open,
			reg120out   =>	open,
			reg121out   =>	open,
			reg122out   =>	open,
			reg123out   =>	open,
			reg124out   =>	open,
			reg125out   =>	open,
			reg126out   =>	open,
			reg127out   =>	open,
			reg128out   =>	open,
			reg129out   =>	open,
			reg130out   =>	open,
			reg131out   =>	open,
			reg132out   =>	open,
			reg133out   =>	open,
			reg134out   =>	open,
			reg135out   =>	open,
			reg136out   =>	open,
			reg137out   =>	open,
			reg138out   =>	open,
			reg139out   =>	open,
			reg140out   =>	open,
			reg141out   =>	open,
			reg142out   =>	open,
			reg143out   =>	open,
			reg144out   =>	open,
			reg145out   =>	open,
			reg146out   =>	open,
			reg147out   =>	open,
			reg148out   =>	open,
			reg149out   =>	open,
			reg150out   =>	open,
			reg151out   =>	open,
			reg152out   =>	open,
			reg153out   =>	open,
			reg154out   =>	open,
			reg155out   =>	open,
			reg156out   =>	open,
			reg157out   =>	open,
			reg158out   =>	open,
			reg159out   =>	open,
			reg160out   =>	open,
			reg161out   =>	open,
			reg162out   =>	open,
			reg163out   =>	open,
			reg164out   =>	open,
			reg165out   =>	open,
			reg166out   =>	open,
			reg167out   =>	open,
			reg168out   =>	open,
			reg169out   =>	open,
			reg170out   =>	open,
			reg171out   =>	open,
			reg172out   =>	open,
			reg173out   =>	open,
			reg174out   =>	open,
			reg175out   =>	open,
			reg176out   =>	open,
			reg177out   =>	open,
			reg178out   =>	open,
			reg179out   =>	open,
			reg180out   =>	open,
			reg181out   =>	open,
			reg182out   =>	open,
			reg183out   =>	open,
			reg184out   =>	open,
			reg185out   =>	open,
			reg186out   =>	open,
			reg187out   =>	open,
			reg188out   =>	open,
			reg189out   =>	open,
			reg190out   =>	open,
			reg191out   =>	open,
			reg192out   =>	open,
			reg193out   =>	open,
			reg194out   =>	open,
			reg195out   =>	open,
			reg196out   =>	open,
			reg197out   =>	open,
			reg198out   =>	open,
			reg199out   =>	open,
			reg200out   =>	open,
			reg201out   =>	open,
			reg202out   =>	open,
			reg203out   =>	open,
			reg204out   =>	open,
			reg205out   =>	open,
			reg206out   =>	open,
			reg207out   =>	open,
			reg208out   =>	open,
			reg209out   =>	open,
			reg210out   =>	open,
			reg211out   =>	open,
			reg212out   =>	open,
			reg213out   =>	open,
			reg214out   =>	open,
			reg215out   =>	open,
			reg216out   =>	open,
			reg217out   =>	open,
			reg218out   =>	open,
			reg219out   =>	open,
			reg220out   =>	open,
			reg221out   =>	open,
			reg222out   =>	open,
			reg223out   =>	open,
			reg224out   =>	open,
			reg225out   =>	open,
			reg226out   =>	open,
			reg227out   =>	open,
			reg228out   =>	open,
			reg229out   =>	open,
			reg230out   =>	open,
			reg231out   =>	open,
			reg232out   =>	open,
			reg233out   =>	open,
			reg234out   =>	open,
			reg235out   =>	open,
			reg236out   =>	open,
			reg237out   =>	open,
			reg238out   =>	open,
			reg239out   =>	open,
			reg240out   =>	open,
			reg241out   =>	open,
			reg242out   =>	open,
			reg243out   =>	open,
			reg244out   =>	open,
			reg245out   =>	open,
			reg246out   =>	open,
			reg247out   =>	open,
			reg248out   =>	open,
			reg249out   =>	open,
			reg250out   =>	open,
			reg251out   =>	open,
			reg252out   =>	open,
			reg253out   =>	open,
			reg254out   =>	open,
			reg255out   =>	open,
			reg256out   =>	open
		);
		
	Clk_process : process
	
	begin
		Clk <= '0';
		wait for clk_period/2;
		Clk <= '1';
		wait for clk_period/2;

	end process clk_process;	

	--  This process does the real job.
	stimuli : process

	begin

		wait for 10 ns;

		testdata2_in <= (others => '1');
		
		wait for 2 ns;
		
		assert testdata2_out = (others => '1') report "Test data 2 correct" severity note;
		
		wait for 2 ns;
			
		testdata3_in <= "00000000000000000000000010000000";
		
		wait for 2 ns;
		
		assert testdata3_out = (others => '1') report "Test data 3 correct" severity note;
		
		wait for 2 ns;

		testdata4_in <= "00000000000000000000000001111111";
		
		wait for 2 ns;
		
		assert testdata4_out = (others => '0') report "Test data 4 correct" severity note;
		
		wait for 2 ns;
		
		testdata1_in <= (others => '0');
		
		wait for 2 ns;
		
		assert testdata1_out = (others => '0') report "Test data 4 correct" severity note;
		
		wait for 2 ns;
		
		assert false report "end of test" severity note;

		--  Wait forever; this will finish the simulation.
		wait;

	end process stimuli;

end beh;
--
-------------------------------------------------------------------------------
