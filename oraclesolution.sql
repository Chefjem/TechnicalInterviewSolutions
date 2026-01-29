SELECT
  order_id
   LISTTAGG(id, ' , ') WITHIN GROUP(ORDER BY id) AS id
FROM table
GROUP BY order_id
ORDER BY order_id

--burada amaç aynı order idye sahipleri tek satırda toplayıp çıktıyı düzenli göstermek