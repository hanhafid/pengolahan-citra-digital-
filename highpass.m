%Nama		: Hafid Prasetyo Nugroho
%NIM		: 5301414029
%Mata Kuliah	: Pengolahan Citrda digital

clc;
close all; % Mengeluarkan semua window
clear; % Menghpus semua variabel.
workspace; % Make sure the workspace panel is showing.
fontSize = 20;
I = imread('E:\Koala.jpg'); % Membaca file gambar dari hardisk
jarak = imnoise(I,'salt & pepper',0.2); % memberikan efek noise pada gambar
r = medfilt2(jarak(:, :, 1), [3 3]); % Filter komposisi warna merah
g = medfilt2(jarak(:, :, 2), [3 3]); % Filter komposisi warna hijarakau
b = medfilt2(jarak(:, :, 3), [3 3]); % Filter komposisi warna biru

filter = cat(3, r, g, b); % mengabungkan nilai filter dari r,g,b
imwrite(filter,'E:\Koala_highpass.jpg')
figure; % Menampilkan Figure
rgbImage = filter; % Membaca file gambar dari hardisk
[rows columns numberOfColorBands] = size(rgbImage); %Mengatur Ukuran Gambar
subplot(2, 2, 1); % Membuat Plot 1
imshow(rgbImage, []); % Menanmpilkan gambar asli dari hardisk
title('Original Color Image', 'Fontsize', fontSize); % Membuat Judul dari Plot 1
set(gcf, 'Position', get(0,'Screensize')); % Memaksimalkan ukuran figure.

redPlane = rgbImage(:, :, 1);   % inisialisasi warna merah
greenPlane = rgbImage(:, :, 2); % inisialisasi warna hijau
bluePlane = rgbImage(:, :, 3);  % inisialisasi warna biru

[pixelCountR grayLevelsR] = imhist(redPlane); % Menampilkan histogram warna merah
subplot(2, 2, 2); % Membuat plot untuk histogram merah
plot(pixelCountR, 'r'); % perintah plot dengan garis warna merah
title('Histogram of red plane', 'Fontsize', fontSize); % Mengatur judul plot histogram merah
xlim([0 grayLevelsR(end)]); % Mengatur skala plot

[pixelCountG grayLevelsG] = imhist(greenPlane); % Menampilkan histogram warna hijau
subplot(2, 2, 3); % Membuat plot untuk histogram hijau
plot(pixelCountG, 'g'); % perintah plot dengan garis warna hijau
title('Histogram of green plane', 'Fontsize', fontSize); % Mengatur judul plot histogram hijau
xlim([0 grayLevelsG(end)]); % Mengatur skala plot

[pixelCountB grayLevelsB] = imhist(bluePlane); % Menampilkan histogram warna biru
subplot(2, 2, 4); % Membuat plot untuk histogram biru
plot(pixelCountB, 'b'); % perintah plot dengan garis warna biru
title('Histogram of blue plane', 'Fontsize', fontSize); % Mengatur judul plot histogram biru
xlim([0 grayLevelsB(end)]); % Mengatur skala plot
figure();
subplot(121);imshow(jarak);title('Gambar Asli + Noise'); %menampilkan gambar asli yang sudah di beri effek noise
subplot(122);imshow(filter);title('High Pass Filter'); % Menampilkan hasil gambar yang sudah di highpass filtefigure();%gambar asli
figure();
rgbImage = I; % Membaca file gambar dari hardisk
[rows columns numberOfColorBands] = size(rgbImage); %Mengatur Ukuran Gambar
subplot(2, 2, 1); % Membuat Plot 1
imshow(rgbImage, []); % Menanmpilkan gambar asli dari hardisk
title('Original Color Image', 'Fontsize', fontSize); % Membuat Judul dari Plot 1
set(gcf, 'Position', get(0,'Screensize')); % Memaksimalkan ukuran figure.

redPlane = rgbImage(:, :, 1);   % inisialisasi warna merah
greenPlane = rgbImage(:, :, 2); % inisialisasi warna hijau
bluePlane = rgbImage(:, :, 3);  % inisialisasi warna biru

[pixelCountR grayLevelsR] = imhist(redPlane); % Menampilkan histogram warna merah
subplot(2, 2, 2); % Membuat plot untuk histogram merah
plot(pixelCountR, 'r'); % perintah plot dengan garis warna merah
title('Histogram of red plane', 'Fontsize', fontSize); % Mengatur judul plot histogram merah
xlim([0 grayLevelsR(end)]); % Mengatur skala plot

[pixelCountG grayLevelsG] = imhist(greenPlane); % Menampilkan histogram warna hijau
subplot(2, 2, 3); % Membuat plot untuk histogram hijau
plot(pixelCountG, 'g'); % perintah plot dengan garis warna hijau
title('Histogram of green plane', 'Fontsize', fontSize); % Mengatur judul plot histogram hijau
xlim([0 grayLevelsG(end)]); % Mengatur skala plot

[pixelCountB grayLevelsB] = imhist(bluePlane); % Menampilkan histogram warna biru
subplot(2, 2, 4); % Membuat plot untuk histogram biru
plot(pixelCountB, 'b'); % perintah plot dengan garis warna biru
title('Histogram of blue plane', 'Fontsize', fontSize); % Mengatur judul plot histogram biru
xlim([0 grayLevelsB(end)]); % Mengatur skala plot