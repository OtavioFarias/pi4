module Forwarding(

    input [4:0] rs1, rs2,
    input [4:0] rdEX, rdMEM, rdWB,
    input EscRegEX, EscRegMEM, EscRegWB,
    output forwardingRs1EX, forwardingRs2EX, forwardingRs1MEM, forwardingRs2MEM, forwardingRs1WB, forwardingRs2WB

);

    assign forwardingRs1EX = ((rs1 == rdEX) & !EscRegEX) ? 1'b1 : 1'b0;
    assign forwardingRs2EX = ((rs2 == rdEX) & !EscRegEX) ? 1'b1 : 1'b0;

    assign forwardingRs1MEM = ((rs1 == rdMEM) & !EscRegMEM) ? 1'b1 : 1'b0;
    assign forwardingRs2MEM = ((rs2 == rdMEM) & !EscRegMEM) ? 1'b1 : 1'b0;

    assign forwardingRs1WB = ((rs1 == rdWB) & !EscRegWB) ? 1'b1 : 1'b0;
    assign forwardingRs2WB = ((rs2 == rdWB) & !EscRegWB) ? 1'b1 : 1'b0;

endmodule
