import os


def rename_files(directory):
    for filename in os.listdir(directory):
        new_name = filename.lower().replace(' ', '_')
        os.rename(
            os.path.join(directory, filename),
            os.path.join(directory, new_name)
        )

# Exemplo de uso
rename_files('/path/to/your/directory')


#if filename.endswith('.txt'):
   # renomeia somente arquivos .tx
