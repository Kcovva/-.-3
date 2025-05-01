module mux5x4bit (a, d0, d1, d2, d3, d4, q);
 input  [2:0] a;
 input  [3:0] d0;
 input  [3:0] d1;
 input  [3:0] d2;
 input  [3:0] d3;
 input  [3:0] d4;
 output [3:0] q;


  assign q = (d0 & {4{~a[2] & ~a[1] & ~a[0]}}) |
             (d1 & {4{~a[2] & ~a[1] &  a[0]}}) |
             (d2 & {4{~a[2] &  a[1] & ~a[0]}}) |
             (d3 & {4{~a[2] &  a[1] &  a[0]}}) |
             (d4 & {4{ a[2] & ~a[1] & ~a[0]}});

endmodule
