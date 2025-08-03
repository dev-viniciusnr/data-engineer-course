# %%
from sqlalchemy import create_engine,VARCHAR,NUMERIC,INTEGER,DATE,DATETIME,String
import pandas as pd

eng_postgree = create_engine('postgresql://postgres:teste123@localhost:5432/python')
eng_mysql = create_engine("mysql+mysqldb://root:teste123@localhost/python")

query = """
select 
id
,dt_ocorrencia
,uf
,regiao
,classificacao_da_ocorrencia
from public.anac_mapeamento
"""

df=pd.read_sql_query(query,eng_postgree )


tabela_destino='anac_origem_postgree'

tipo_coluna={
    'id':INTEGER,
    'dt_ocorrencia':DATE,
    'uf':VARCHAR(15),
    'regiao':VARCHAR(15),
    'classificacao_da_ocorrencia':VARCHAR(50)
     }


df.to_sql(name=tabela_destino, con=eng_mysql, if_exists='replace', dtype= tipo_coluna, index=False    )




