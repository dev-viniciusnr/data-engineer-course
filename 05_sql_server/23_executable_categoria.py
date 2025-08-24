# %%
"""
Create table Categoria(
	ID int,
	Categoria nvarchar(255)

)"""

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
dados = pd.read_excel(r"D:\engenharia de dados\curso udemy\Arquivos\04.+ETL+Pandas\04. ETL Pandas\arquivos_excel\Categoria.xlsx")
dados = dados.rename(columns={"name": "Nome"})
str(dados.columns).replace("'","")

# %%
cursor.execute('truncate table [Categoria]') 
cursor.commit()

# %%
for index, linha in dados.iterrows():
    
    cursor.execute("Insert into [Categoria](ID,Categoria)values(?,?)",linha.id,linha.Nome) 
    
cursor.commit()   
cursor.close()
conexaoDB.close() 

# %% [markdown]
# 


