clc;
clear all;
close all;
X=[1 0 0 ];
for i=1:7
 y(i)=X(3);
 s=xor(X(3),X(1));
 X(3)=X(2);
 X(2)=X(1);
 X(1)=s;
end
stem(y);
