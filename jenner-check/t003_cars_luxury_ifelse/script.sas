data cars;
    input Brand $ Price;
    if Price > 30000 then Type="Luxury";
    else Type="Budget";
    datalines;
   BMW 45000
   Toyota 28000
   Audi 52000
   Kia 19000
;
run;

proc print data=cars;
run;
