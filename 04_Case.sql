-- Databricks notebook source
SELECT *,
     
     -- Isso aqui é uma outra coluna nova!! 
     CASE
       WHEN descUF = 'SP' THEN 'paulista'
       WHEN descUF = 'RJ' THEN 'fluminense'
       WHEN descUF = 'PR' THEN 'paranaense'
       ELSE 'outros'
     END AS descNacionalidade    
     
     FROM silver_olist.cliente
