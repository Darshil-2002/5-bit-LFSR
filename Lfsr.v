module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output [4:0] q
); 

    wire d,e,f;
    assign e = 0;
    assign d = q[0] ^ e;
    assign f = q[3] ^ q[0];
    always @ (posedge clk)
        begin
            if (reset)
                q <= 5'h1;
            else
                begin
                    q[4] <= d;
                    q[3] <= q[4];
                    q[2] <= f;
                    q[1] <= q[2];
                    q[0] <= q[1];
                end
        end
endmodule

                
