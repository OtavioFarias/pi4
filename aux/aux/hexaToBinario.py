def hex_to_bin32(input_file, output_file=None):
    with open(input_file, 'r') as f:
        lines = f.readlines()

    bin_lines = []
    for line in lines:
        line = line.strip()
        if not line:
            continue  # Ignora linhas vazias

        # Separa a linha em partes: o primeiro é o hex, o resto é comentário
        parts = line.split()
        print(f"📄 Elementos da linha: {parts}")  # <-- Aqui está o print solicitado

        hex_str = parts[0]
        comment = ' '.join(parts[1:]) if len(parts) > 1 else ''

        try:
            # Converte o valor hexadecimal para binário de 32 bits
            value = int(hex_str, 16)
            bin_str = format(value, '032b')

            # Adiciona o comentário, se houver
            if comment:
                bin_str += f" // {comment.strip()}"

            bin_lines.append(bin_str)
        except ValueError:
            print(f"❌ Linha inválida ignorada: {hex_str}")

    # Salva os resultados em um arquivo ou imprime na tela
    if output_file:
        with open(output_file, 'w') as f_out:
            f_out.write('\n'.join(bin_lines))
        print(f"✅ Binários salvos em {output_file}")
    else:
        for b in bin_lines:
            print(b)

# Exemplo de uso
hex_to_bin32("instHexa.txt", "inst32.txt")
