module MemDat(
    input [31:0] value,       // valor de entrada (8 bits)
    input esc_mem,           // sinal de controle para escrita em memória
    input read_mem,
    input [31:0] dst_mem,     // endereço de destino para escrita
    output [31:0] out_dat,  // saída de dados (8 bits)
    input clock
);
//colocar readMem
    // Memória de dados (256 posições, 8 bits cada)
    reg [7:0] dat [0:4096];

    // Inicialização das memórias
    initial begin

dat[0] = 8'b00000000;
dat[1] = 8'b00000000;
dat[2] = 8'b00000000;
dat[3] = 8'b00000001;

dat[4] = 8'b00000000;
dat[5] = 8'b00000000;
dat[6] = 8'b00000000;
dat[7] = 8'b00000010;

dat[8] = 8'b00000000;
dat[9] = 8'b00000000;
dat[10] = 8'b00000000;
dat[11] = 8'b00000101;

dat[12] = 8'b00000000;
dat[13] = 8'b00000000;
dat[14] = 8'b00000000;
dat[15] = 8'b00000100;

    end

    // Escreve na memória de dados quando esc_mem é 1
    always @(posedge clock) begin
            if(esc_mem) begin
                dat[dst_mem] <= value[31:24];
                dat[dst_mem + 1] <= value[23:16];
                dat[dst_mem + 2] <= value[15:8];
                dat[dst_mem + 3] <= value[7:0];
            end
    end




    // Atribuições para as saídas
    assign out_dat = {dat[dst_mem], dat[dst_mem + 1], dat[dst_mem + 2], dat[dst_mem + 3]};  // Saída de dados

endmodule
