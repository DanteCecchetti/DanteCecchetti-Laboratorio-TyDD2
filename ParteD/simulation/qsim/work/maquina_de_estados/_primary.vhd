library verilog;
use verilog.vl_types.all;
entity maquina_de_estados is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        Z               : out    vl_logic_vector(3 downto 0)
    );
end maquina_de_estados;
