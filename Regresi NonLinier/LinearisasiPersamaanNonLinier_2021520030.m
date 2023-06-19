% Data yang akan dicocokkan
xi = [1, 2, 3, 4, 5]; % Nilai x
yi = [0.5, 1.7, 3.4, 5.7, 8.4]; % Nilai y

% Mengubah data menjadi ln(xi) dan ln(yi)
x = log(xi);
y = log(yi);

% Regresi linier untuk mencari a dan b
n = length(x); % Jumlah data
sum_x = sum(x);
sum_y = sum(y);
sum_x2 = sum(x.^2);
sum_xy = sum(x.*y);

b = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x^2); % Koefisien regresi b
a = (sum_y - b * sum_x) / n; % Koefisien regresi a

% Menghitung nilai C dari a = ln(C)
C = exp(a);

% Menampilkan hasil
disp(['Nilai a: ', num2str(a)]);
disp(['Nilai b: ', num2str(b)]);
disp(['Nilai C: ', num2str(C)]);

% Mencocokkan data menggunakan persamaan y = C * x^b
x_fit = linspace(min(xi), max(xi), 100); % Nilai x untuk fitting
y_fit = C * x_fit.^b; % Nilai y hasil fitting

% Plot data dan hasil fitting
figure;
scatter(xi, yi, 'o', 'DisplayName', 'Data');
hold on;
plot(x_fit, y_fit, 'r', 'DisplayName', 'Fitting');
xlabel('x');
ylabel('y');
title('Linearisasi Persamaan Nonlinear');
legend('Location', 'best');
grid on;
