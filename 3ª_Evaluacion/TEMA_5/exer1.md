1. //weight o /inventory/product/weight
2. //weight/text() 
3. //product[last()]/weight/text()
4. ////product/weight/@unit
6. //product[@code='AAA-111']/weight/text()
7. //weight[@unit='g']/../name/text()
8. //name[text()='Monitor']/../@code
9. //weight[@unit="g" and text()>250 or @unit="kg" and text()>0.250]/../@code