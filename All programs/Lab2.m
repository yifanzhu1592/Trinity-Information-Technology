figure(1);

a = 0; % a determines the location of the subplot

for i=[1,3,5,10,50,500] % Approximation with different sine functions
    
    x = 0:1:i; % x is the x axis
    y = 4/pi*(1-1/x); % y is the graph of the stems
    
    a = a + 1;
    
    figure(1)
    subplot(3,2,[a]); % set the subplot
    stem(x,y); % draw the stems
    axis([0 i 0 1.5]); % set the axes
end;
