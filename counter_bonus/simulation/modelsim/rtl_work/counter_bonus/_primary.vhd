library verilog;
use verilog.vl_types.all;
entity counter_bonus is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        UpDwn           : in     vl_logic;
        count           : out    vl_logic_vector(7 downto 0)
    );
end counter_bonus;
