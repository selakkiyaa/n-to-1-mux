module nto1mux_tb;
    parameter N = 8;                   
    reg [(N-1):0] data;                
    reg [$clog2(N)-1:0] sel;          
    wire out;    
    nto1_mux #(.N(N)) uut (
        .data(data),
        .sel(sel),
        .out(out)
    );

    initial begin
        $monitor("Time=%0t | Data=%b | Sel=%b | Out=%b", $time, data, sel, out);
        data = 8'b11010111; sel = 3'b000; #10; 
        sel = 3'b001; #10;                    
        sel = 3'b010; #10;                    
        sel = 3'b011; #10;                    
        sel = 3'b100; #10;                    
        sel = 3'b101; #10;                    
        sel = 3'b110; #10;                    
        sel = 3'b111; #10; 
        $stop;
    end

endmodule

