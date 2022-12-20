close all;
clc;

%% Veri Giri�i
    
obj= videoinput('winvideo', 1, 'YUY2_320x240'); %kamera ayarlar�n� belirle.
preview(obj); %kameray� a�
pause(10); %g�r�nt�n�n kameraya oturtulmas� i�in 10 saniye bekle.
frame = getsnapshot(obj); %YUY2 format�ndaki g�r�n�t�y� matris olarak al.
closepreview(obj);
    
rgbmap = YUY2toRGB(frame); %renk d�zeltmesi yap.

%% G�r�nt�y� siyah-beyaz yap

Ibitmap = rgb2gray(rgbmap);

threshold = graythresh(Ibitmap);

sb = im2bw(Ibitmap, threshold);

%Siyah-beyaz gelen g�r�nt�y� ters �evir
sb = ~sb;

imshow(sb);
pause(3);
close;
     
sbk = kucult(sb);
    
sbk = sbk';
    
%16x16 piksellik matrisi tek sat�r (1x256) vekt�re d�n��t�r. 
sbv = sbk(:); 

%% De�erlendirme


% Orijinal dataset olan 256 s�tunluk dataset se�ilmi� ise 
% herhangi bir i�leme gerek kalmadan do�rudan networke girebiliriz.
% Ancak k�salt�lm�� veri setleri kullan�lacaksa paramAzalt ile girdiyi
% k���ltmek gerekiyor.

sonuc = sim(net, sbv);

%% Karar Verme K�sm�
 
rt_sonuc;