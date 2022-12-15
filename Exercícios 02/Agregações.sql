-- Databricks notebook source
SELECT  count(*) AS nrLinhasNaoNulas
FROM  silver_olist.cliente


-- COMMAND ----------

SELECT
COUNT(*) AS nrLinhasNaoNulas
COUNT(idCliente) AS nrIdClienteNaoNulo, 
COUNT(distinct idCliente) AS nrIdClienteDistintos,

COUNT(IdClienteUnico) AS nrIdClienteUnico,
COUNT(DISTINCT IdClienteNulo) AS nrIdClienteUnicoDistintos

FROM  silver_olist.cliente
