% File: segmentasi.m
% Desc: Proses segmentasi warna
% Date: 17 April 2016
% Author: Eliza Riviera Rachmawati Jasin - 1103130144

% Load image
I = imread('tele.png');

% Bikin matriks zero
putih = uint8(zeros(size(I)));
hijau = uint8(zeros(size(I)));
kuning = uint8(zeros(size(I)));
merah = uint8(zeros(size(I)));
ungu = uint8(zeros(size(I)));

% Ambil warnanya
for i = 1:size(I,1)
    for j = 1:size(I,2)
        if ((I(i,j,1) == 204) && (I(i,j,2) == 0) && (I(i,j,3) == 0))
            merah(i,j,:) = I(i,j,:);
        end
        if ((I(i,j,1) == 155) && (I(i,j,2) == 255) && (I(i,j,3) == 5))
            hijau(i,j,:) = I(i,j,:);
        end
        if ((I(i,j,1) == 255) && (I(i,j,2) == 204) && (I(i,j,3) == 0))
            kuning(i,j,:) = I(i,j,:);
        end
        if ((I(i,j,1) == 102) && (I(i,j,2) == 51) && (I(i,j,3) == 153))
            ungu(i,j,:) = I(i,j,:);
        end
        if ((I(i,j,1) >= 210) && (I(i,j,2) >= 210) && (I(i,j,3) >= 210))
            putih(i,j,:) = I(i,j,:);
        end
    end
end

% Tampilkan
subplot(2,3,1), imshow(I), title('Gambar Asli');
subplot(2,3,2), imshow(ungu), title('Ungu');
subplot(2,3,3), imshow(kuning), title('Kuning');
subplot(2,3,4), imshow(merah), title('Merah');
subplot(2,3,5), imshow(hijau), title('Hijau');
subplot(2,3,6), imshow(putih), title('Putih');