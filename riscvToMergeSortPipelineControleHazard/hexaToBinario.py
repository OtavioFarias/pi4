def hex_to_bin32(input_file, output_file=None):
    with open(input_file, 'r') as f:
        lines = f.readlines()

    bin_lines = []
    for line in lines:
        hex_str = line.strip()
        if hex_str == '':
            continue  # Ignora linhas vazias
        try:
            value = int(hex_str, 16)
            bin_str = format(value, '032b')
            bin_lines.append(bin_str)
        except ValueError:
            print(f"❌ Linha inválida ignorada: {hex_str}")

    if output_file:
        with open(output_file, 'w') as f_out:
            f_out.write('\n'.join(bin_lines))
        print(f"✅ Binários salvos em {output_file}")
    else:
        for b in bin_lines:
            print(b)


hex_to_bin32("instHexa.txt", "inst32.txt")
