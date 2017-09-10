#! /usr/local/Cellar/icarus-verilog/10.1.1/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1_1)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x7fc960405730 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x7fc960416210_0 .var "A", 0 0;
v0x7fc9604162a0_0 .net "AandB", 0 0, L_0x7fc960416e70;  1 drivers
v0x7fc960416330_0 .net "AorB", 0 0, L_0x7fc960416ee0;  1 drivers
v0x7fc9604163e0_0 .var "B", 0 0;
v0x7fc960416490_0 .net "nA", 0 0, L_0x7fc960416910;  1 drivers
v0x7fc960416560_0 .net "nAandB", 0 0, L_0x7fc960416b60;  1 drivers
v0x7fc960416610_0 .net "nAandnB", 0 0, L_0x7fc960416af0;  1 drivers
v0x7fc9604166a0_0 .net "nAorB", 0 0, L_0x7fc960416c10;  1 drivers
v0x7fc960416750_0 .net "nAornB", 0 0, L_0x7fc960416cc0;  1 drivers
v0x7fc960416880_0 .net "nB", 0 0, L_0x7fc960416a00;  1 drivers
S_0x7fc960405890 .scope module, "dut" "demorgan" 2 9, 3 1 0, S_0x7fc960405730;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "nA"
    .port_info 3 /OUTPUT 1 "nB"
    .port_info 4 /OUTPUT 1 "nAandnB"
    .port_info 5 /OUTPUT 1 "AandB"
    .port_info 6 /OUTPUT 1 "nAandB"
    .port_info 7 /OUTPUT 1 "AorB"
    .port_info 8 /OUTPUT 1 "nAorB"
    .port_info 9 /OUTPUT 1 "nAornB"
L_0x7fc960416910 .functor NOT 1, v0x7fc960416210_0, C4<0>, C4<0>, C4<0>;
L_0x7fc960416a00 .functor NOT 1, v0x7fc9604163e0_0, C4<0>, C4<0>, C4<0>;
L_0x7fc960416af0 .functor AND 1, L_0x7fc960416910, L_0x7fc960416a00, C4<1>, C4<1>;
L_0x7fc960416b60 .functor AND 1, v0x7fc960416210_0, v0x7fc9604163e0_0, C4<1>, C4<1>;
L_0x7fc960416c10 .functor NOT 1, L_0x7fc960416b60, C4<0>, C4<0>, C4<0>;
L_0x7fc960416cc0 .functor OR 1, v0x7fc960416210_0, v0x7fc9604163e0_0, C4<0>, C4<0>;
L_0x7fc960416e70 .functor NOT 1, L_0x7fc960416cc0, C4<0>, C4<0>, C4<0>;
L_0x7fc960416ee0 .functor OR 1, L_0x7fc960416910, L_0x7fc960416a00, C4<0>, C4<0>;
v0x7fc960405b30_0 .net "A", 0 0, v0x7fc960416210_0;  1 drivers
v0x7fc960415af0_0 .net "AandB", 0 0, L_0x7fc960416b60;  alias, 1 drivers
v0x7fc960415b90_0 .net "AorB", 0 0, L_0x7fc960416cc0;  alias, 1 drivers
v0x7fc960415c20_0 .net "B", 0 0, v0x7fc9604163e0_0;  1 drivers
v0x7fc960415cc0_0 .net "nA", 0 0, L_0x7fc960416910;  alias, 1 drivers
v0x7fc960415da0_0 .net "nAandB", 0 0, L_0x7fc960416c10;  alias, 1 drivers
v0x7fc960415e40_0 .net "nAandnB", 0 0, L_0x7fc960416af0;  alias, 1 drivers
v0x7fc960415ee0_0 .net "nAorB", 0 0, L_0x7fc960416e70;  alias, 1 drivers
v0x7fc960415f80_0 .net "nAornB", 0 0, L_0x7fc960416ee0;  alias, 1 drivers
v0x7fc960416090_0 .net "nB", 0 0, L_0x7fc960416a00;  alias, 1 drivers
    .scope S_0x7fc960405730;
T_0 ;
    %vpi_call 2 14 "$display", "A B | ~A ~B | ~A~B | ~(AB) | ~A+~B | ~(A+B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc960416210_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc9604163e0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  %b |    %b  |    %b |     %b |    %b ", v0x7fc960416210_0, v0x7fc9604163e0_0, v0x7fc960416490_0, v0x7fc960416880_0, v0x7fc960416610_0, v0x7fc960416560_0, v0x7fc960416750_0, v0x7fc9604166a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc960416210_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc9604163e0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  %b |    %b  |    %b |     %b |    %b ", v0x7fc960416210_0, v0x7fc9604163e0_0, v0x7fc960416490_0, v0x7fc960416880_0, v0x7fc960416610_0, v0x7fc960416560_0, v0x7fc960416750_0, v0x7fc9604166a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc960416210_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc9604163e0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  %b |    %b  |    %b |     %b |    %b ", v0x7fc960416210_0, v0x7fc9604163e0_0, v0x7fc960416490_0, v0x7fc960416880_0, v0x7fc960416610_0, v0x7fc960416560_0, v0x7fc960416750_0, v0x7fc9604166a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc960416210_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc9604163e0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b  %b |    %b  |    %b |     %b |    %b ", v0x7fc960416210_0, v0x7fc9604163e0_0, v0x7fc960416490_0, v0x7fc960416880_0, v0x7fc960416610_0, v0x7fc960416560_0, v0x7fc960416750_0, v0x7fc9604166a0_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
