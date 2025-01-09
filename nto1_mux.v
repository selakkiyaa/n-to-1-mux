module nto1_mux #(
    parameter N = 8
)(
    input [(N-1):0] data,       
    input [$clog2(N)-1:0] sel,  
    output reg out              
);

    always @(*) begin
        out = data[sel];
    end

endmodule

