
module tb;

logic a = 0;
logic b;

inv inv (
    .a,
    .b
);

assert final (inv.a != inv.b) else $fatal();

initial begin
    a = 0;
    #1;
    $display(b);
    a = 1;
    #1;
    $display(b);
end

endmodule
