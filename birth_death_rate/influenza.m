clc;
close all;
clear all;
global a
global b
global N
global betta
global gamma
betta = input('please enter betta coefficient(for influenza: 1e-6):');
gamma = input('please enter gamma coefficient (for influenza: 1/3):');
S0 = input('please enter initial susceptibles population (for our example 9*e5) :');
I0 = input('please enter initial infectives population(for our example 1e5):');
enD_time = input('please enter time for solving in day (for our example 150 days):');
a = input('please enter rate of birth (for our example 1/50):');
b = input('please enter rate of death (for our example 1/50):');
N = input('please enter total population size (for our example 1e6):');
initial_conditions=[S0 I0];
options=odeset('maxstep',0.001);
[t,y] = ode45(@birth_death_rate,[0 enD_time],initial_conditions ,options);
Ssolve = y(:, 1);
Isovle = y(:, 2);
plot(t,Isovle,'b');
xlabel('time in days');
ylabel('population size');
