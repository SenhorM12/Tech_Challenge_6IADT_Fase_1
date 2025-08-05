# Use uma imagem oficial do Python
FROM python:3.11

# Crie o diretório de trabalho
WORKDIR /app

# Copie os arquivos do projeto
COPY . /app

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta padrão do Jupyter
EXPOSE 8888

# Comando para iniciar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
