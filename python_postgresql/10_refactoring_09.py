# %%
from sqlalchemy import create_engine ,Integer, String, Date,VARCHAR,text
from datetime import datetime
import pandas as pd

# %%
pd.set_option('display.max_columns', None)
caminho_do_arquivo = r"D:\engenharia de dados\curso udemy\Arquivos\01.+Postgree\01. Postgree\Origem de dados\V_OCORRENCIA_AMPLA.json"
df = pd.read_json(caminho_do_arquivo, encoding='utf-8-sig')
colunas = ["Numero_da_Ocorrencia", "Classificacao_da_Ocorrência", "Data_da_Ocorrencia","Municipio","UF","Regiao","Nome_do_Fabricante","Modelo"]
df = df[colunas]
df.rename( columns={  'Classificacao_da_Ocorrência' : 'Classificacao_da_Ocorrencia'  } ,inplace=True )

# %%
df['Data_da_Ocorrencia'] = pd.to_datetime(df['Data_da_Ocorrencia'])
ano = 2024
df = df[df['Data_da_Ocorrencia'].dt.year == ano]

# %%
dbname   = 'python'
user     = 'postgres'
password = 'teste123'
host     = 'localhost'
port     = '5432' 

conn = f'postgresql://{user}:{password}@{host}:{port}/{dbname}'
engine = create_engine(conn)

nome_tabela = 'anac_sqlalchemy' 

cursor=engine.connect() 
delete = text(f'delete from public.anac_sqlalchemy where extract(year from "Data_da_Ocorrencia")= {ano}')
cursor.execute(delete)
cursor.commit()

df.to_sql(nome_tabela, engine, index=False, if_exists='append',
      dtype={ 
            'Numero_da_Ocorrencia' :   Integer ,
            'Classificacao_da_Ocorrencia': VARCHAR(50),
            'Data_da_Ocorrencia':Date  
            })
engine.dispose()
cursor.close()


