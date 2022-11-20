library verilog;
use verilog.vl_types.all;
entity Sum4bit_vlg_sample_tst is
    port(
        Bit_0           : in     vl_logic;
        Bit_1           : in     vl_logic;
        Bit_2           : in     vl_logic;
        Bit_3           : in     vl_logic;
        Clear           : in     vl_logic;
        Load            : in     vl_logic;
        SUMAoRESTA      : in     vl_logic;
        Transfer        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Sum4bit_vlg_sample_tst;
