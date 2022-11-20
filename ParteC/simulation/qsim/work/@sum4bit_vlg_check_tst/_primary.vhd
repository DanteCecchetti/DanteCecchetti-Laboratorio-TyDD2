library verilog;
use verilog.vl_types.all;
entity Sum4bit_vlg_check_tst is
    port(
        Carry           : in     vl_logic;
        Overflow        : in     vl_logic;
        Salida_0        : in     vl_logic;
        Salida_1        : in     vl_logic;
        Salida_2        : in     vl_logic;
        Salida_3        : in     vl_logic;
        Signo           : in     vl_logic;
        Zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Sum4bit_vlg_check_tst;
