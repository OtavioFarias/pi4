def process_file(input_path, output_path):
    with open(input_path, 'r') as infile:
        lines = infile.readlines()

    inst_lines = []
    inst_index = 0

    for line in lines:
        # Separa comentário (se existir)
        parts = line.strip().split('//')
        binary_part = parts[0].replace('_', '').strip()
        comment = f"// {parts[1].strip()}" if len(parts) > 1 else ""

        # Divide em blocos de 8 bits
        chunks = [binary_part[i:i+8] for i in range(0, len(binary_part), 8)]

        # Adiciona comentário (se tiver)
        if comment:
            inst_lines.append(comment)

        # Cria as linhas de inst[]
        for chunk in chunks:
            # Preenche com zeros à esquerda se não tiver 8 bits
            chunk = chunk.zfill(8)
            inst_lines.append(f"inst[{inst_index}] = 8'b{chunk};")
            inst_index += 1

    # Escreve em um novo arquivo
    with open(output_path, 'w') as outfile:
        outfile.write('\n'.join(inst_lines))

# Exemplo de uso
input_txt = 'instrucoes.txt'   # Seu arquivo de entrada
output_txt = 'instrucoesFormatadas.txt' # Arquivo que será gerado
process_file(input_txt, output_txt)
