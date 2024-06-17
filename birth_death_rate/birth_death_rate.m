function dy = birth_death_rate(t,y)
global a
global b
global N
global betta
global gamma
dy=zeros(2,1);% y(1)=S(t)  and  y(2)=I(t)
dy(1) = b*N-betta*y(2)*y(1)-a*y(1);
dy(2) = betta*y(1)*y(2)-gamma*y(2)-a*y(2); 


