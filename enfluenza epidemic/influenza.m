clc;
close all;
clear all;
global betta
global gamma
betta = input('please enter betta coefficient(for influenza: 2.18e-3):');
gamma = input('please enter gamma coefficient (for influenza: 0.44):');
S0 = input('please enter initial susceptibles population (for our example 762) :');
I0 = input('please enter initial infectives population(for our example 1):');
enD_time = input('please enter time for solving in day (for our example 15 days):');
initial_conditions=[S0 I0];
options=odeset('maxstep',0.001);
[t,y] = ode45(@influenza_epidemic,[0 enD_time],initial_conditions ,options);
Ssolve = y(:, 1);
Isovle = y(:, 2);
plot(t,Ssolve,'r',t,Isovle,'b');
grid on;
xlabel('time in days');
ylabel('population size');
legend('susceptible population','infective population','location','nwo');