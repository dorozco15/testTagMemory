library verilog;
use verilog.vl_types.all;
entity TagMemory_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        clock_en        : in     vl_logic;
        line_in         : in     vl_logic_vector(2 downto 0);
        read_en         : in     vl_logic;
        reset           : in     vl_logic;
        tag_in          : in     vl_logic_vector(6 downto 0);
        write_en        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TagMemory_vlg_sample_tst;
