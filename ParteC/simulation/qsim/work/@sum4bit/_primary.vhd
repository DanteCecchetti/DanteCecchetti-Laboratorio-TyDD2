library verilog;
use verilog.vl_types.all;
entity Sum4bit is
    port(
        Carry           : out    vl_logic;
        SUMAoRESTA      : in     vl_logic;
        Load            : in     vl_logic;
        Bit_3           : in     vl_logic;
        Clear           : in     vl_logic;
        Transfer        : in     vl_logic;
        Bit_2           : in     vl_logic;
        Bit_1           : in     vl_logic;
        Bit_0           : in     vl_logic;
        Overflow        : out    vl_logic;
        Zero            : out    vl_logic;
        Salida_0        : out    vl_logic;
        Salida_1        : out    vl_logic;
        Salida_2        : out    vl_logic;
        Salida_3        : out    vl_logic;
        Signo           : out    vl_logic
    );
end Sum4bit;
