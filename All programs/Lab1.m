figure(1);

a = 0; % a determines the location of the subplot

for i=[1,3,5,10,50,500] % Approximation with different sine functions
    
    t = -1:0.01:1; % t is the time
    y1 = square(2*pi*t); % y1 is the graph of the squares
    
    y2 = 0;
    for j=1:2:(2*i)
        y2 = y2 + sin(2*pi*j*t)/j;
    end;
    y2 = y2 * 4/pi; % y2 is the value for the sine function
    
    a = a + 1;
    
    figure(1)
    subplot(3,2,[a]); % set the subplot
    hold on; % to have two curves in the subplot at the same time
    plot(t,y1,'r'); % draw the red line
    plot(t,y2,'b'); % draw the blue line
    axis([-1 1 -2 2]); % set the axes
end;
