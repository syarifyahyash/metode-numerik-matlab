% Fungsi yang akan diintegralkan
function y = f(x)
    y = 2 * x.^2 + 3 * x + 1;
end

% Algoritma Gauss dengan 3 titik
function integral = gauss3(a, b)
    % Titik sampel dan bobot
    x = [-0.7745966692, 0, 0.7745966692];
    w = [0.5555555556, 0.8888888889, 0.5555555556];

    % Hitung integral perkiraan
    integral = 0;
    for i = 1:length(x)
        integral = integral + w(i) * f((b - a) / 2 * x(i) + (b + a) / 2);
    end
    integral = integral * (b - a) / 2;
    
    
    % Contoh penggunaan
a = 0; % Batas bawah
b = 1; % Batas atas
hasil_integral = gauss3(a, b);
disp(['Hasil integral: ', num2str(hasil_integral)]);
    
end


