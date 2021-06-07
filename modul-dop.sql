mysql> select concat (
    -> "We have ", (select count(*) from persons where gender = "m" group by gender), " boys!" ,
    -> "We have ", (select count(*) from persons where gender = "f" group by gender), " girls!"
    -> );

-----------------------------------+
| We have 3 boys! We have 3 girls! |
+-----------------------------------
1 row in set (0,00 sec)

