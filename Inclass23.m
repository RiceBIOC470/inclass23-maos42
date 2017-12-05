%GB comments
1 100 
2 100
3 100 
4 100
overall 100


%In this directory, you will find a derivative function representing a
%three gene circuit in which each gene product represses the transcription of another
%gene in a cycle. This simple three gene circuit displays oscillations and was one
%of the first synthetic circuits ever constructed (see Elowitz & Leibler
%Nature 2000). 

% 1. Start with initial conditions x(1) = 1, x(2) = x(3) = 0. 
% Run the model for 200 time units and plot the result. verify that it
% does indeed oscillate. 

sol=ode23(@repressilator,[0 200], [1 0 0]);
figure (1); plot(sol.x,sol.y); xlabel('Time'); ylabel('Gene Product');
legend('1','2','3');

% 2. What happens if you start with initial conditions x(1) = x(2) = x(3) =
% 0.5? Why?

sol=ode23(@repressilator,[0 200], [0.5 0.5 0.5]);
figure (2); plot(sol.x,sol.y); xlabel('Time'); ylabel('Gene Product');
legend('1','2','3');

%Miguel Angel: Only the third derivative is taking action, meaning its the
%only one oscillating, which means that 1 and 2 are repressed.

% 3. The strength of the repression is governed by the constant k2 which is
% the same for all the genes. What happens when you make k2 larger or
% smaller? Find the approximate value of k2 for which the system no longer
% oscillates. 

%when k2 = 50
sol=ode23(@repressilator50,[0 200], [1 0 0]); 
figure (3); plot(sol.x,sol.y); xlabel('Time'); ylabel('Gene Product');
legend('1','2','3');

%it oscillates faster, which means it has a greater frequency.

%when k2=2
sol=ode23(@repressilator2,[0 200], [1 0 0]); 
figure (4); plot(sol.x,sol.y); xlabel('Time'); ylabel('Gene Product');
legend('1','2','3');

%Miguel Angel: not only do the oscillation gets lower but it also makes the gene product
%to be around 0.5 

% 4. What happens when you make k2 larger or smaller for only one of the
% genes? 

sol=ode23(@repressilator2,[0 200], [1 0 0]); 
figure (4); plot(sol.x,sol.y); xlabel('Time'); ylabel('Gene Product');
legend('1','2','3');

%for this case, the first gene has a k2 of 30, the second gene has a k2
%value of 1 and the last one, has a k2 of 5. 

sol=ode23(@repressilatorE,[0 200], [1 0 0]); 
figure (5); plot(sol.x,sol.y); xlabel('Time'); ylabel('Gene Product');
legend('1 - k2=30','2 - k2=1','3 - k2=5');

%Miguel Angel: we can observe clearly how gene 2 it is far separated from 1 and 3, and
%that is also the one generating more product, which indicates that k2
%repression related, because when we increase it for 1 and 3, their
%production drops and even though they possess different values, gene 1 and
%3 have a production around 0.3 towards time.
%

