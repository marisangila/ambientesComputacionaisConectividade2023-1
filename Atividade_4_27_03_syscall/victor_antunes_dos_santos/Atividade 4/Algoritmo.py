# Solicita o nome do arquivo de leitura
nome_arquivo_leitura = input("Digite o nome do arquivo que você deseja ler: ")

# Abre o arquivo em modo de leitura
with open(nome_arquivo_leitura, 'r') as arquivo_leitura:
    # Lê o conteúdo do arquivo
    conteudo = arquivo_leitura.read()
print(conteudo)
  
# Solicita o nome do arquivo de escrita
nome_arquivo_escrita = input("Digite o nome do arquivo em que você deseja escrever: ")

# Abre o arquivo em modo de escrita
with open(nome_arquivo_escrita, 'w') as arquivo_escrita:
    # Escreve o conteúdo lido no arquivo de escrita
    arquivo_escrita.write(conteudo)

print(f"O conteúdo do arquivo {nome_arquivo_leitura} foi copiado para o arquivo {nome_arquivo_escrita}.") 
