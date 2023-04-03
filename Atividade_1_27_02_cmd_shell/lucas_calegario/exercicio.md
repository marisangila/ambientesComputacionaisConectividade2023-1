1. Va até a sua área de trabalho
```
$ cd ~
```

2. Crie uma pasta dentro da área de trabalho chamada sociesc
```
$ mkdir sociesc
```

3. Dentro desta pasta crie as seguintes pastas:
```
$ cd sociesc
$ mkdir ACC && mkdir WEB
```

4. Crie um arquivo .txt dentro da pasta sociesc com o nome teste.txt.
```
$ touch teste.txt
```

5. Edite o arquivo teste.txt. Inclua o o seguinte texto: "este é um arquivo de teste criado pelo terminal."
```
$ echo "este é um arquivo de teste criado pelo terminal." >> teste.txt
```

7. Mova o arquivo que você criou para a pasta ACC
```
$ mv ~/sociesc/teste.txt ~/sociesc/ACC/
```

8. Copie o arquivo que agora está na pasta ACC para a pasta WEB.
```
$ cp ~/sociesc/ACC/teste.txt ~/sociesc/WEB/teste.txt
```

10. Liste as pasta existentes dentro da pasta sociesc.
```
$ ls
```

11. Exclua o arquivo de texto da pasta ACC.
```
$ rm ./ACC/teste.txt
```

12. Renomeie a pasta WEB para desenvolvimento_web
```
$ mv WEB/ desenvolvimento_web/
```

13. Vá para diretamente a raiz do disco rígido (partição C).
```
$ cd /
```