function root = bisectionMethod()
    % Memeriksa apakah fungsi memiliki akar dalam rentang (a, b)
    a = -10;
    b = 10;
    tolerance = 1e-6;
    
    % Menginisialisasi variabel
    iter = 0;
    maxIter = 1000;

    % Mengiterasi hingga konvergen atau mencapai batas iterasi maksimum
    while (b - a) >= tolerance && iter < maxIter
        % Menghitung titik tengah
        c = (a + b) / 2;

        % Memeriksa apakah titik tengah merupakan akar
        if abs(f(c)) <= tolerance
            root = c;
            return;
        end

        % Memperbarui batas atas atau batas bawah berdasarkan sifat fungsi
        if f(c) * f(a) < 0
            b = c;
        else
            a = c;
        end

        % Menaikkan iterasi
        iter = iter + 1;
    end

    % Mengembalikan akar perkiraan
    root = (a + b) / 2;
    
    % Menampilkan pesan jika tidak konvergen
    if iter >= maxIter
        disp('Metode bisection tidak konvergen dalam iterasi maksimum.');
    end
    
    % Panggil fungsi bisectionMethod
    root = bisectionMethod();

    % Tampilkan hasil
    disp(['Akar perkiraan: ', num2str(root)]);
    
end

function value = f(x)
    value = 2 * x - 5;
end


