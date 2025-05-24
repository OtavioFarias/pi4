import csv

def decimal_to_32bit_bin_chunks(value):
    bin_32bit = format(int(value), '032b')  # Converte para binário com 32 bits
    return [bin_32bit[i:i+8] for i in range(0, 32, 8)]  # Divide em blocos de 8 bits

def process_csv(input_csv, output_txt):
    dat = {}

    with open(input_csv, newline='') as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            if not row or len(row) < 2:
                continue  # Ignora linhas vazias ou incompletas

            base_index = int(row[0].strip())
            decimal_value = int(row[1].strip())

            chunks = decimal_to_32bit_bin_chunks(decimal_value)
            for i, chunk in enumerate(chunks):
                dat[base_index + i] = chunk

    # Ordena os índices e escreve no arquivo de saída
    with open(output_txt, 'w') as outfile:
        for idx in sorted(dat.keys()):
            outfile.write(f"dat[{idx}] = 8'b{dat[idx]};\n")

# Exemplo de uso
process_csv('DadosParaFormatar.csv', 'dadosFormatados.txt')
