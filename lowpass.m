%Nama		: Hafid Prasetyo Nugroho
%NIM		: 5301414029
%Mata Kuliah	: Pengolahan Citrda digital

clc;
close all; % Mengeluarkan semua window
clear; % Menghpus semua variabel.
workspace; % Make sure the workspace panel is showing.
fontSize = 20;
 
I = imread('E:\Koala.jpg'); % Membaca file gambar dari hardisk
range = 15 % Nilai tingkat kehalusan gambar
jarak = fspecial('disk', range); % pemberian efek khusus
filter = imfilter(I,jarak,'replicate'); % menggabungkan nilai range yang sudah di atur  dengan gambar asli, sehingga tingkat kehalusan fiter low pass
imwrite(filter,'E:\Koala_lowpass.jpg')

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
subplot(131);imshow(I);title('Gambar asli');  % Membuat plot dan menampilkan hasil dari I ( gambar asli )
subplot(132);imshow(filter);title('Hasil Lowpass Filter'); % Membuat plot dan menampilkan hasil dari K10 ( gambar dari hasil LPF )
figure();%gambar asli
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