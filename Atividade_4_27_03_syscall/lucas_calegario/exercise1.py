import pathlib

reading_file = pathlib.Path(input("Digite o caminho do arquivo de entrada:\n"))
writing_file = pathlib.Path(input("Digite o caminho do arquivo de saida:\n"))

print(reading_file.read_text(encoding="utf8"))
writing_file.write_text(reading_file.read_text(encoding="utf8"), encoding="utf8")