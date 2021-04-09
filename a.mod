set I;
set V;
set M;
set E;
set F1;
set F2;
set F3; 

param a{i in I, v in V};
param b{i in I, m in M};
param c{i in I, e in E};

var x{i in I, v in V} integer >= 0;
var y{i in I, m in M} integer >= 0;
var z{i in I, e in E} integer >= 0;
var w{i in I, f in F1} integer >= 0;
var t{i in I, f in F2} integer >= 0;
var u{i in I, f in F3} integer >= 0;

maximize maximo: sum{i in I, v in V} a[i,v] * x[i,v]+ sum{i in I, m in M} b[i,m] * y[i,m]+ sum{i in I, e in E} c[i,e]*z[i,e];

s.t. r1{i in I}: sum{v in V} x[i,v] <= 1000;
s.t. r2{i in I}: sum{m in M} y[i,m] <= 1000;
s.t. r3{i in I}: sum{e in E} z[i,e] <= 1000;
s.t. r4{i in I}: (sum{f in F1} w[i,f]/1000 + sum{f in F2} t[i,f]/1535 + sum {f in F3} u[i,f]/1750)<=1;
s.t. r5{i in I}: (sum{f in F1} w[i,f]/1850 + sum{f in F2} t[i,f]/850 + sum{ f in F3} u[i,f]/1200)<=1;
s.t. r6{i in I}: (sum{f in F1} w[i,f]/750 + sum{f in F2} t[i,f]/1500 + sum{ f in F3} u[i,f]/2000)<=1;
s.t. r7{i in I}: w[i,"rv"] = x[i,"rv"];
s.t. r8{i in I}: t[i,"cv"] = x[i,"cv"];
s.t. r9{i in I}: u[i,"iv"] = x[i,"iv"];
s.t. r10{i in I}: w[i,"rm"] = y[i,"rm"];
s.t. r11{i in I}: t[i,"cm"] = y[i,"cm"];
s.t. r12{i in I}: u[i,"im"] = y[i,"im"];
s.t. r13{i in I}: w[i,"re"] = z[i,"re"];
s.t. r14{i in I}: t[i,"ce"] = z[i,"ce"];
s.t. r15{i in I}: u[i,"ie"] = z[i,"ie"];