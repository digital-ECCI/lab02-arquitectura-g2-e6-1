`include "Sumador1b.v"
module sumador_4b(

    input  [3:0] A,
    input  [3:0] B,
    input        Ci,
    output       Co,
    output [3:0] So
);

wire C1, C2, C3;


Sumador_1b FA0 (
    .A(A[0]),
    .B(B[0]),
    .Ci(Ci),
    .So(So[0]),
    .Co(C1)
);

Sumador_1b FA1 (
    .A(A[1]),
    .B(B[1]),
    .Ci(C1),
    .So(So[1]),
    .Co(C2)
);

Sumador_1b FA2 (
    .A(A[2]),
    .B(B[2]),
    .Ci(C2),
    .So(So[2]),
    .Co(C3)
);

Sumador_1b FA3 (
    .A(A[3]),
    .B(B[3]),
    .Ci(C3),
    .So(So[3]),
    .Co(Co)
);

endmodule
