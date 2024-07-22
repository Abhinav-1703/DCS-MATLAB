clc;
clear all;
close all;
n=input("enter n value for n-bit PCM system");
n1=input("enter number of samples in a period i.e sampling frequency: ");
L=2^n;
x=0:1/400:4*pi;
y=10*sin(x);
subplot(3,1,1);
plot(y);
title('Analog signal');
ylabel('Amplitude--->');
xlabel('Time-->');
x=0:2*pi/n1:4*pi;
s=10*sin(x);
subplot(3,1,2);
stem(s);
grid on;
title('sampled signal');
ylabel('Amplitude--->');
xlabel('time--->');
vmax=10;
vmin=-vmax;
del=(vmax-vmin)/L;
part=vmin:del:vmax;
code=vmin-(del/2):del:vmax+(del/2);
[ind,q]=quantiz(s,part,code);
l1=length(ind);
l2=length(q);
    for i=1:l1
        if(ind(i)~=0)
            ind(i)=ind(i)-1;
        end
        i=i+1;
    end
    ind;
    for i=1:l2;
        if(q(i)==vmin-(del/2));
            q(i)=vmin+(del/2);
        end
    end
    q;

subplot(3,1,3);
stem(q);
grid on;
title('quantised signal');
ylabel('amplitude--->');
xlabel('Time--->?');
figure
code=de2bi(ind,'left-msb');
k=1;
for i=1:l1
    for j=1:n
        coded(k)=code(i,j);
        j=j+1;
        k=k+1;
    end
    i=i+1;
end
coded
subplot(2,1,1);grid on;
stairs(coded);
axis([0 100 -2 3]);
title('encoded signal');
ylabel('amplitude--->');
xlabel('time---->;');
qunt=reshape(coded,n,length(coded)/n);
index=bi2de(qunt','left-msb');
q=del*index+vmin+(del/2);
subplot(2,1,2);grid on;
plot(q);
title('demodulated signal');
ylabel('amplitude--->');
xlabel('time--->');
