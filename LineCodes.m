% NRZ – Unipolar coding
clc
clear all
close all
t=0:.01:5-.01;
b=[1 0 1 0 1];
y=[];
s=[];
for j=1:length(b)
if b(j)==1
y(1:100)=5;
else
y(1:100)=0;
end
s=[s y];
end
plot(t,s,'Linewidth',3);

%Unipolar RZ
clc
clear all
close all
t=0:.01:5-.01;
b=[1 0 1 0 1];
y=[];
s=[];
for j=1:length(b)
if b(j)==1
y(1:50)=5;
y(51:100)=0;
else
y(1:100)=0;
end
s=[s y];
end
plot(t,s,'Linewidth',3);

%Polar NRZ
clc
clear all
close all
t=0:.01:5-.01;
b=[1 0 1 0 1];
y=[];
s=[];
for j=1:length(b)
if b(j)==1
y(1:100)=5;
else
y(1:100)=-5;
end
s=[s y];
end
plot(t,s,'Linewidth',3);

%Polar RZ
clc
clear all
close all
t=0:.01:5-.01;
b=[1 0 1 0 1];
y=[];
s=[];
for j=1:length(b)
if b(j)==1
y(1:50)=5;
y(51:100)=0
else
y(1:50)=-5;
y(51:100)=0;
end
s=[s y];
end
plot(t,s,'Linewidth',3);

%Manchester
clc
clear all
close all
t=0:.01:5-.01;
b=[1 0 1 0 1];
y=[];
s=[];
for j=1:length(b)
if b(j)==1
y(1:50)=5;
y(51:100)=-5
else
y(1:50)=-5;
y(51:100)=5;
end
s=[s y];
end
plot(t,s,'Linewidth',3);

%Bipolar NRZ
clc
clear all
close all
b=[1 0 1 0 1 1];
t=0:.01:6-.01;
y=[]
i=0;
s=[]
for j=1:length(b)
 if b(j)==1
   i=i+1;
   x=mod(i,2)
   if x==1
     y(1:100)=5
   else
     y(1:100)=-5;
   end
 else
  y(1:100)=0;
 end
s=[s y]
end
plot(t,s,’LineWidth’3)
