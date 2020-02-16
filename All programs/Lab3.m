y = load('array.mat'); % load the variable array in matlab assigning it to the variable y

subplot(1,2,[1]);
plot(y.y); % plot the signal
title("Signal as it is");
xlabel('Time');
ylabel('Frequency');

subplot(1,2,[2]);
F = fftshift(abs(fft(y.y,y.N))); % find the frequency spectrum of the signal
newX = -y.fs/2:y.fs/y.N:y.fs/2-y.fs/y.N; % scale the frequencies respect to sampling frequency and number of FFT samples
plot(newX,F); % plot the frequency spectrum
axis([-500 500 0 500]);
title("Frequency spectrum of the signal");
xlabel('Frequency');
ylabel('Amplitude');
