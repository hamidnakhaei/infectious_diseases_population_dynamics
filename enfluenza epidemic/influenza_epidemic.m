function dy = influenza_epidemic(t,y)
global betta
global gamma
dy=zeros(2,1);% y(1)=S(t)  and  y(2)=I(t)
dy(1) = -1*betta*y(2)*y(1);
dy(2) = betta*y(1)*y(2)-gamma*y(2); 


