set Month;
set Venus;
set Marth;
set Mercury;
set F1;
set F2;
set F3; 

param a{i in Month, v in Venus};
param b{i in Month, m in Marth};
param c{i in Month, e in Mercury};

var x{i in Month, v in Venus} integer >= 0;
var y{i in Month, m in Marth} integer >= 0;
var z{i in Month, e in Mercury} integer >= 0;
var w{i in Month, f in F1} integer >= 0;
var t{i in Month, f in F2} integer >= 0;
var u{i in Month, f in F3} integer >= 0;

maximize maximo: sum{i in Month, v in Venus} a[i,v] * x[i,v]+ sum{i in Month, m in Marth} b[i,m] * y[i,m]+ sum{i in Month, e in Mercury} c[i,e]*z[i,e];

s.t. r1{i in Month}: sum{v in Venus} x[i,v] <= 1000;
s.t. r2{i in Month}: sum{m in Marth} y[i,m] <= 1000;
s.t. r3{i in Month}: sum{e in Mercury} z[i,e] <= 1000;
s.t. r4{i in Month}: (sum{f in F1} w[i,f]/1000 + sum{f in F2} t[i,f]/1535 + sum {f in F3} u[i,f]/1750)<=1;
s.t. r5{i in Month}: (sum{f in F1} w[i,f]/1850 + sum{f in F2} t[i,f]/850 + sum{ f in F3} u[i,f]/1200)<=1;
s.t. r6{i in Month}: (sum{f in F1} w[i,f]/750 + sum{f in F2} t[i,f]/1500 + sum{ f in F3} u[i,f]/2000)<=1;
s.t. r7{i in Month}: w[i,"rvenus"] = x[i,"rvenus"];
s.t. r8{i in Month}: t[i,"cvenus"] = x[i,"cvenus"];
s.t. r9{i in Month}: u[i,"ivenus"] = x[i,"ivenus"];
s.t. r10{i in Month}: w[i,"rmarth"] = y[i,"rmarth"];
s.t. r11{i in Month}: t[i,"cmarth"] = y[i,"cmarth"];
s.t. r12{i in Month}: u[i,"imarth"] = y[i,"imarth"];
s.t. r13{i in Month}: w[i,"rmercury"] = z[i,"rmercury"];
s.t. r14{i in Month}: t[i,"cmercury"] = z[i,"cmercury"];
s.t. r15{i in Month}: u[i,"imercury"] = z[i,"imercury"];

end;