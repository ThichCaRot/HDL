library verilog;
use verilog.vl_types.all;
entity ASM1 is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        LD              : in     vl_logic;
        EN_down         : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end ASM1;
