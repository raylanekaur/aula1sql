-- Databricks notebook source
-- Selecione todos os clientes Paulistanos!!

SELECT *

FROM silver_olist.cliente
WHERE descCidade = 'São Paulo'

-- COMMAND ----------

-- exercicio 02 selecione todos os clientes paulistas 

SELECT * 

FROM silver_olist.cliente 
WHERE descUF = 'SP'

-- COMMAND ----------

-- exercicio 04 

SELECT * 

FROM silver_olist.produto 
WHERE descCategoria IN ('perfumaria', 'bebida')
AND vlAlturaCm> 5

-- COMMAND ----------


