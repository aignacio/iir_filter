clc
clear
% b = [0.028  0.053 0.071  0.053 0.028];
% a = [1.000 -2.026 2.148 -1.159 0.279];
% for i=1:size(b,2)
%     b(1,i) = round(b(1,i)*2^20);
%     a(1,i) = round(a(1,i)*2^20);
% end

% Section 1

f = 2^20;

b0 = 1;
b1 = 2;
b2 = 1;
a0 = 1;
a1 = -1.905517578125;
a2 = 0.92657470703125;
k = 0.0052540302276611328125;

fprintf('S1 -> b0=%d b1=%d b2=%d / a0=%d a1=%d a2=%d\n',round(b0*k*(f)),round(b1*k*(f)),round(b2*k*(f)),round(a0*(f)),round(a1*(f)),round(a2*(f)));

% Section 2
b0 = 1;
b1 = 2;
b2 = 1;
a0 = 1;
a1 = -1.79156494140625;
a2 =  0.81134033203125;
k = 0.0049397945404052734375;

fprintf('S2 -> b0=%d b1=%d b2=%d / a0=%d a1=%d a2=%d\n',round(b0*k*(f)),round(b1*k*(f)),round(b2*k*(f)),round(a0*(f)),round(a1*(f)),round(a2*(f)));

% Section 3
b0 = 1;
b1 = 2;
b2 = 1;
a0 = 1;
a1 = -1.73175048828125;
a2 =   0.7508544921875;
k = 0.00477504730224609375;

fprintf('S3 -> b0=%d b1=%d b2=%d / a0=%d a1=%d a2=%d\n',round(b0*k*(f)),round(b1*k*(f)),round(b2*k*(f)),round(a0*(f)),round(a1*(f)),round(a2*(f)));

N=500;
n=0:N-1;
f=500;
f2=10000;
fs=48000;
x=round(300*sin(2*pi*(f/fs)*n)+300*sin(2*pi*(f2/fs)*n));
stem(n,x);
for i=1:N
    formatSpec = 'x = %d; #20833; // Sample(%d)\n';
    fprintf(formatSpec,x(i),i);
end
