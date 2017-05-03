#Nama		: Hafid Prasetyo Nugroho
#NIM		: 5301414029
#Mata Kuliah	: Pengolahan Citrda digital

import numpy as np
import cv2

webcam = cv2.VideoCapture(0) # menginalisasi kamera yang digunakan adalah kamera internal

while(True):
	ret, frame = webcam.read()# menangkap frame-frame dari kamera dengan warna asli

	brig1 = cv2.addWeighted(frame,1.5 , np.zeros(frame.shape, frame.dtype), 0, 20)# mengatur brightness dengan menambahkan 2 data array untuk menghasilkan gambar yang baik.
	negatif = (255-frame)#mengatur perubahan warna menjadi negatif dengan mengurang data 255 dengan data dari frame kamera yang terbaca sehingga di dapatkan data sebaliknya dari frame aslinya
	
	abu_abu = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY) # merubah warna yang di tampilkan kamera menjadi warna abu_abu dengan perintah BGR2GRAY
	brig2 = cv2.addWeighted(abu_abu,1.5 , np.zeros(abu_abu.shape, abu_abu.dtype), 0, 20)# mengatur brightness dengan menambahkan 2 data array untuk menghasilkan gambar yang baik.
	negative = (255-abu_abu)#mengatur perubahan warna abu_abu menjadi negatif dengan mengurang data 255 dengan data dari frame abu-abu kamera yang telah di olah sehingga di dapatkan data sebaliknya dari frame aslinya
	
	#program penampil hasil kamera
	cv2.imshow('berwarna',frame) # perintah menampilkan/memunculkan webcam dengan dengan warna asli
	cv2.imshow('brightness1',brig1)# perintah menampilkan/memunculkan webcam dengan dengan warna asli dengan meningkatkan brightnessnya
	cv2.imshow('negative1',negatif)# # perintah menampilkan/memunculkan webcam dengan dengan warna asli yang telah di olah menjadi gambar negatif
	cv2.imshow('abu-abu',abu_abu)# perintah menampilkan/memunculkan webcam dengan gambar telah di olah menjadi warna abu_abu
	cv2.imshow('brightness2',brig2)# perintah menampilkan/memunculkan webcam dengan gambar telah di olah menjadi warna abu_abu kemudian tingkat brightnessnya di tingkatkan
	cv2.imshow('negative2',negative)# perintah menampilkan/memunculkan webcam dengan gambar telah di olah menjadi warna abu_abu kemudian sudah di olah menjadi warna negatif
	if cv2.waitKey(1) & 0xFF == ord('q'): # perintah menutup aplikasi yang muncul dengan menekan huruf 'q' pada keyboard pada aplikasi webcam yg muncul
		break

cap.release()
cv2.destroyAllWindows()