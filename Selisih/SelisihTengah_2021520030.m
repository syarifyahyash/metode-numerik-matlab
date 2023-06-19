% Program Selisih Tengahan - Metode Numerik

% Fungsi yang akan diturunkan
function y = fungsi(x)
    y = x^2; % Misalnya kita akan menghitung turunan dari fungsi x^2
end

% Fungsi utama
function main()
    % Titik tengah x0
    x0 = 2;

    % Step size h
    h = 0.1;

    % Menghitung selisih tengahan
    f_turunan = (fungsi(x0 + h) - fungsi(x0 - h)) / (2 * h);

    % Menampilkan hasil
    disp(['Nilai turunan pada x = ', num2str(x0), ' adalah: ', num2str(f_turunan)]);

    % Menampilkan tabel selisih tengahan
    fprintf('\nTabel Selisih Tengahan:\n');
    fprintf('   h\t\tf''(x)\n');
    fprintf('-------------------\n');

    % Loop untuk mencetak nilai selisih tengahan dengan variasi h
    for i = 1:5
        h = 0.1 / (2^(i-1)); % Variasi nilai h

        f_turunan = (fungsi(x0 + h) - fungsi(x0 - h)) / (2 * h);

        fprintf('%.4f\t\t%.4f\n', h, f_turunan);
    end
end

