[notes,fsampling] = audioread('exercise notes.wav'); % load the sound samples
%sound(notes);

subplot(3,1,[1]);
plot(notes); % plot the initial array
axis([0 10001 -0.2 0.2]);
title("Graph of the note");

notes1 = notes(1:6700); % the first separate array
notes2 = notes(6701:10001); % the second separate array
N1 = 8192;
N2 = 4096;
%sound(notes1);
%sound(notes2);

subplot(3,1,[2]);
F1 = fftshift(abs(fft(notes1,N1))); % find the frequency spectrum of the signal
newX = -fsampling/2:fsampling/N1:fsampling/2-fsampling/N1; % scale the frequencies respect to sampling frequency and number of FFT samples
plot(newX,F1); % plot the frequency spectrum
title("Frequency spectrum of first note");
xlabel('Frequency');
ylabel('Amplitude');
axis([-3000 3000 0 100]);

subplot(3,1,[3]);
F2 = fftshift(abs(fft(notes2,N2))); % find the frequency spectrum of the signal
newX = -fsampling/2:fsampling/N2:fsampling/2-fsampling/N2; % scale the frequencies respect to sampling frequency and number of FFT samples
plot(newX,F2); % plot the frequency spectrum
title("Frequency spectrum of second note");
xlabel('Frequency');
ylabel('Amplitude');
axis([-1000 1000 0 100]);
