# %%
"""
CREATE TABLE Clientes(
	id int,
	created_at datetime,
	first_name nvarchar(255),
	last_name nvarchar(255),
	email nvarchar(255),
	cell_phone nvarchar(255),
	country nvarchar(255),
	state nvarchar(255),
	street nvarchar(255),
	number nvarchar(255),
	additionals nvarchar(255)
)

"""

# %%

import pandas as pd
import pyodbc 

server = 'DESKTOP-505F0PE'
database = 'Python' 
conexaoDB = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};'
                      f'SERVER={server};'
                      f'DATABASE={database};'
                      'Trusted_Connection=yes;')

cursor = conexaoDB.cursor()  

# %%
dados = pd.read_csv(r"D:\engenharia de dados\curso udemy\Arquivos\04.+ETL+Pandas\04. ETL Pandas\arquivos_csv\Clientes.csv")

# %%
dados['created_at'] = pd.to_datetime(dados['created_at'])
dados['email'] = dados['email'].fillna('Sem Registro')
dados['street'] = dados['street'].fillna('Sem Info')
dados['number'] = dados['number'].fillna('Sem Número')
dados['additionals'] = dados['additionals'].fillna('Sem Info')

# %%
for coluna in dados.columns:
    print(f"Coluna: {coluna}, Tipo de dados: {dados[coluna].dtypes}")

# %%
str(dados.columns).replace("'","")

# %%
cursor.execute('truncate table [Clientes]') 
cursor.commit()

# %%
for index, linha in dados.iterrows():
    
    linha.email = str(linha.email)
    linha.cell_phone = str(linha.cell_phone)
    linha.country = str(linha.country)
    linha.state = str(linha.state)

    cursor.execute("Insert into [Clientes](id, created_at, first_name, last_name, email, cell_phone, country, state, street, number, additionals)values(?,?,?,?,?,?,?,?,?,?,?)",linha.id,linha.created_at,linha.first_name,
                   linha.last_name, linha.email, linha.cell_phone, linha.country, linha.state, linha.street, linha.number, linha.additionals) 
    
cursor.commit()   
cursor.close()
conexaoDB.close() 

# %% [markdown]
# 


