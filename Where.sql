-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

 -- LIMIT 100
 
 -- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação de pedido seja entregue 'delivered'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao= 'Canceled')
AND year(dtpedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos (Enviados ou Cancelados) de 2018

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao  IN  ('shipped','Canceled')
AND year(dtpedido) = '2018'

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado)
       
FROM silver_olist.pedido

WHERE descSituacao  IN  ('shipped','Canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30 
