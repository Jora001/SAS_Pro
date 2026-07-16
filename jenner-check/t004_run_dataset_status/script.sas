Data Run;

    Input Name $ Age;
    if Age >=18 then Status="Adult";
    else Status="Minor";
    Datalines;

Emush 15
Jor 20
;
run;

proc print data=Run noobs;
run;
