library verilog;
use verilog.vl_types.all;
entity counter8bit is
    port(
        clk             : in     vl_logic;
        pre             : in     vl_logic;
        clear           : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        data_out        : out    vl_logic_vector(3 downto 0);
        en              : in     vl_logic
    );
end counter8bit;
