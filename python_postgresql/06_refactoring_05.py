# %% [markdown]
# Importing DataFrame

# %%
import pandas as pd
import psycopg2

# %%
caminho_do_arquivo = r"D:\engenharia de dados\curso udemy\Arquivos\01.+Postgree\01. Postgree\Origem de dados\V_OCORRENCIA_AMPLA.json"
df = pd.read_json(caminho_do_arquivo, encoding='utf-8-sig')

# %% [markdown]
# Filtering and modifying columns

# %%
colunas = ['Numero_da_Ocorrencia', 'Classificacao_da_Ocorrência', 'Data_da_Ocorrencia', 'Municipio', 'UF', 'Regiao', 'Nome_do_Fabricante'] 
df = df[colunas]
df.rename(columns={ 'Classificacao_da_Ocorrência' : 'Classificacao_da_Ocorrencia' }, inplace=True)

# %% [markdown]
# Inserting data from the dataframe into postgre

# %%
dbname = 'python'
user = 'postgres'
password = 'teste123'
host = 'localhost'
port = '5432'

conn = psycopg2.connect(dbname=dbname, user=user, password=password, host=host, port=port)

cur = conn.cursor()

cur.execute("delete from anac ")

for indice,linha in df.iterrows():
    cur.execute("""
                insert into Anac (     
                    Numero_da_Ocorrencia, 
                    Classificacao_da_Ocorrencia, 
                    Data_da_Ocorrencia, 
                    Municipio, 
                    UF, 
                    Regiao, 
                    Nome_do_Fabricante
                ) VALUES (%s, %s, %s, %s, %s, %s, %s)
                
                """,(
                    linha["Numero_da_Ocorrencia"],
                    linha["Classificacao_da_Ocorrencia"],
                    linha["Data_da_Ocorrencia"],
                    linha["Municipio"],
                    linha["UF"],
                    linha["Regiao"],
                    linha["Nome_do_Fabricante"]
                )       
                )

conn.commit()
cur.close()
conn.close()


