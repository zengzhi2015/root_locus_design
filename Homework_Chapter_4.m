%% 4-1
%% 4-1-1
clear
clc
close all
s = tf('s');
G = (s+1)*(s+3)/(s*(s+2));
root_locus_tool(G);
%% 4-1-2
clear
clc
close all
s = tf('s');
G = (s+2)*(s+3)/(s*(s+4));
root_locus_tool(G);
%% 4-1-3
clear
clc
close all
s = tf('s');
G = (s+3)*(s+4)/(s*(s+1));
root_locus_tool(G);
%% 4-1-4
clear
clc
close all
s = tf('s');
G = (s+2+1i)*(s+2-1i)/(s*(s+1));
root_locus_tool(G);
%% 4-2
clear
clc
close all
s = tf('s');
G = 1/(s^2*(s+1));
root_locus_tool(G);
%% 4-3
%% 4-3-1
clear
clc
close all
s = tf('s');
G = 1/(s*(s^2+2*s+5));
root_locus_tool(G);
%% 4-3-2
clear
clc
close all
s = tf('s');
G = (s+1)/(s^2*(s+2)*(s+4));
root_locus_tool(G);
%% 4-3-3
clear
clc
close all
s = tf('s');
G = 1/(s*(s+1)*(s+2)*(s+5));
root_locus_tool(G);
%% 4-4
% Change 'a' and very interesting result occurs!
clear
clc
close all
s = tf('s');
a = 0.2;
G = (s+a)/(s^2*(s+1));
root_locus_tool(G);
%% 4-5
% zita = cos(phi) = 0.5;
% phi = acos(zita) = 1rad = 60degree 
% K ~~ 2.5
clear
clc
close all
s = tf('s');
G = 1/(s*(s+1)*(s+2)*(s+3));
%% 4-6
% 1~1.25
clear
clc
close all
s = tf('s');
G = (2*s+1)/((s+1)^2*(4/7*s-1));
root_locus_tool(G);
%% 4-7
% 0~0.686 & >23.4
clear
clc
close all
s = tf('s');
G = (0.25*s+1)/(s*(0.5*s+1));
root_locus_tool(G);
%% 4-8
% 0~0.85
clear
clc
close all
s = tf('s');
G = (s+10)/(s^3+3*s^2+2*s);
root_locus_tool(G);
%% 4-9
%% 4-9-1
clear
clc
close all
s = tf('s');
G = 1/(s*(s+1));
root_locus_tool(G);
%% 4-9-2
% See why there should be an additional modification block
% Change 'a' and observe the changes of the root locus
clear
clc
close all
s = tf('s');
a = 10;
G = (s+2.5)/(s*(s+1)*(s+a));
%% 4-9-3
% Solving linear equations
clear
clc
close all
A = [-1 -1 0;
     -3.2 -1 -1;
     -18.56 0 -2.5];
b = [-2.2 -18.56 0]';
x = A\b; % S3,a,K
s = tf('s');
a = x(2);
G = (s+2.5)/(s*(s+1)*(s+a));
root_locus_tool(G);
%% 4-10
%% 4-10-1
clear
clc
close all
s = tf('s');
G = (s+2)/((s+1+2j)*(s+1-2j));
root_locus_tool(G);
%% 4-10-2
clear
clc
close all
s = tf('s');
G = (s+20)/(s*(s+10+10j)*(s+10-10j));
root_locus_tool(G);
%% 4-11
clear
clc
close all
s = tf('s');
G = 1/(s*(s^2+2*s+2));
root_locus_tool(G);
%% 4-12
clear
clc
close all
s = tf('s');
G = (s+2)/(s*(s+1)*(s+3));
root_locus_tool(G);
%% 4-13
clear
clc
close all
s = tf('s');
G = 0.25/(s^2*(s+1)+0.25*s);
root_locus_tool(G);
%% 4-14
% The shape and tendency is very interesting
clear
clc
close all
s = tf('s');
G = s^2*(0.1*s+1)/(s*(0.1*s+1)+2.6);
root_locus_tool(G);
%% 4-15
clear
clc
close all
s = tf('s');
G = -(s+1)/(s^2*(s+2)*(s+4));
root_locus_tool(G);
%% 4-16
% Calclate the two roots and substitude them to the equation of circle
clear
clc
close all
s = tf('s');
G = (s+2)/(s*(s+1));
root_locus_tool(G);
%% 4-17
%% 4-17-1&2
% We have seen this in 4-16
% The system in question 2 is not stable
clear
clc
close all
Kh = 0.5;
s = tf('s');
G = (Kh*s+1)/(s*(s+1));
root_locus_tool(G);
%% 4-10-3&4
clear
clc
close all
K = 1;
s = tf('s');
G = K*s/(s*(s+1)+K);
root_locus_tool(G);