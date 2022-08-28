syms ks kp n r;
a11 = 1/i*((n+1)*(ks*r)^(n-1)-(n+3)*(ks*r)^(n+1)/(6+4*n));
a12 = kp*((kp*r)^(n-1)-(kp*r)^(n+1)/(6+4*n));
a21 = n*(n+1)/i*((ks*r)^(n-1)-(ks*r)^(n+1)/(6+4*n));
a22 = kp*(n*(kp*r)^(n-1)-(n+2)*(kp*r)^(n+1)/(6+4*n));
b11 = 1/i*(-n*(ks*r)^(-n-2)-(n-2)*(ks*r)^(-n)/(2*(2*n-1)));
b12 = kp*((kp*r)^(-n-2)+(kp*r)^(-n)/(2*(2*n-1)));
b21 = n*(n+1)/i*((ks*r)^(-n-2)+(ks*r)^(-n)/(2*(2*n-1)));
b22 = kp*(-(n+1)*(kp*r)^(-n-2)-(n-1)*(kp*r)^(-n)/(2*(2*n-1)));
a = [a11 a12;a21 a22];
b = [b22 -b12;-b21 b11];
c = [-i/ks 0;0 1]*b*a*[1 0;0 -i/kp];
figure;text(0.5,0.5,['$$',latex(collect(det(c),r)),'$$'],'interpreter',...
    'latex','horizontalalignment','center','verticalalignment','middle');axis off
