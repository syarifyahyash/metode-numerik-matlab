    
% Contoh penggunaan
xdata = [0, 1, 2, 3, 4]; % Titik data x
ydata = [1, 2, 4, 8, 16]; % Titik data y
x = 2.5; % Nilai x yang ingin diestimasi

hasil_estimasi = polinomNewton_2021520030(x, xdata, ydata);
disp(['Estimasi f(', num2str(x), ') = ', num2str(hasil_estimasi)]);