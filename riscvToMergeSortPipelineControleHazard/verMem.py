with open("memdat_debug_words_0_255.txt", "w") as f:
    f.write("// Ponte para debug da memória dat[0] até dat[1023], agrupando em words de 32 bits\n")
    for i in range(0, 4096, 4):
        word_index = i // 4
        line = f"wire [31:0] dado{word_index} = {{dat[{i}], dat[{i+1}], dat[{i+2}], dat[{i+3}]}};\n"
        f.write(line)
