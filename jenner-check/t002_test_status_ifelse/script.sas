data test;
    input Name $ Age;
    if Age >= 18 then Status="Adult";
    else Status="Minor";
    datalines;
   Anna 22
   Ben 17
;
run;

proc print data=test;
run;
