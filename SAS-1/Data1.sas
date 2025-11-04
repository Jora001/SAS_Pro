data student;
    input Name $ Age Grade;
    datalines;
    Jora 24 Hovsepyan
    Anna 22 Smith
    John 23 Doe
;
Run;

proc print data=student noobs;

Data Name;
    Input Name $ Age Surname $ Date $;
    Datalines;

Maria 27 Papoyan 2023
Jor 24 Hovsepyan 2023
;
Run;

proc print data=Name noobs;

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

Data Jan;

    input Name $ Age;

    if age >=18 then Status="min";
    else Status="Jan";

    Datalines;

Emm 20
Jor 15
;

Run;

Proc print data=jan noobs;

Data GeName;

    input Name $ Age;
    if Name=Emuhs then Status="Uff";
    else Status="Kkk";

    datalines;

Emush 20
Jor 20
;
Run;

proc print data=GeName noobs;

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

Data Cars;

    input Brand $ Price;

    if Price > 30000 then Type="Min";

    else Type="Janga";
    Datalines;

BMW 28000
Mercedes 350000
Kia 850000
;
Run;

proc print data=cars noobs;
