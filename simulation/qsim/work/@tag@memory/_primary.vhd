library verilog;
use verilog.vl_types.all;
entity TagMemory is
    port(
        clock_en        : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        tag_in          : in     vl_logic_vector(6 downto 0);
        hit             : out    vl_logic;
        line_in         : in     vl_logic_vector(2 downto 0);
        write_en        : in     vl_logic;
        read_en         : in     vl_logic
    );
end TagMemory;
