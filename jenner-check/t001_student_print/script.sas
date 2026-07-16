data student;
    input Name $ Age Grade;
    datalines;
    Jora 24 Hovsepyan
    Anna 22 Smith
    John 23 Doe
;
Run;

proc print data=student noobs;
run;
