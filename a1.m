clear all
clc
bw=input('b=');
yw=input('h=');
bx=input('bx=');
by=input('by=');
n=(bx+1)*(by+1);
p=((2*bx)+1)*by;
k=0;
z=0;
for j=1:n
    a(j,1)=j;
end
for s=1:bx+1
    z=0;
    for i=s:bx+1:n
        a(i,2)=k;
        a(i,3)=z;
        z=z+yw;
    end
    k=k+bw;
end
for j=1:p
    m(j,1)=j;
end
for by=1:by
for i=1:p
    if (i<=(bx+1))
        m(i,2)=i;
        m(i,3)=m(i,2)+(bx+1);
    elseif (i>=((bx+2)+((by-1)*((2*bx)+1))) && i<((bx+2)+((by-1)*((2*bx)+1))+bx))
        m(i,2)=i-((by-1)*bx);
        m(i,3)=m(i,2)+1;
    end
end
end
for by=2:by
for i=1:p  
     if (i<=(bx+1))
        m(i,2)=i;
        m(i,3)=m(i,2)+(bx+1);
     elseif (i>=((2*(bx+1))+((2*bx+1)*(by-2))))&&(i<=((2*(bx+1))+((2*bx+1)*(by-2))+bx))
            m(i,2)=i-((by-1)*bx);
            m(i,3)=m(i,2)+bx+1;
     end
end
end
disp(a)
disp(m)
figure(1)
for g=1:p
    x1=a(m(g,2),2);
    x2=a(m(g,3),2);
    y1=a(m(g,2),3);
    y2=a(m(g,3),3);
    X=[x1 x2];
    Y=[y1 y2];
    plot(X,Y)
    str=sprintf('(%d,%d)',x1,y1);
    text(x1,y1,str);
    str2=sprintf('%d',g);
    text((x1+x2)/2,(y1+y2)/2,str2);
    hold on
end
xlim=(-3+(bx-bw)+3);
ylim=(-3+(by-yw)+3);
axis('equal')