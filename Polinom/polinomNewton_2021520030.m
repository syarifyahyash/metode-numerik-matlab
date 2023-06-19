function y = polinomNewton_2021520030(x, xdata, ydata)
    % Menghitung koefisien polinom Newton menggunakan tabel beda terbagi

    n = length(xdata); % Jumlah titik data
    f = zeros(n); % Matriks tabel beda terbagi
    f(:, 1) = ydata'; % Kolom pertama tabel beda terbagi adalah nilai f(x)

    % Menghitung tabel beda terbagi
    for j = 2:n
        for i = j:n
            f(i, j) = (f(i, j-1) - f(i-1, j-1)) / (xdata(i) - xdata(i-j+1));
        end
    end

    % Menghitung polinom Newton
    y = f(1, 1);
    for i = 2:n
        term = f(i, i);
        for j = 1:i-1
            term = term * (x - xdata(j));
        end
        y = y + term;
    end
end

