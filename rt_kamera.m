close all;
clc;

%% Veri Giriþi
    
obj= videoinput('winvideo', 1, 'YUY2_320x240'); %kamera ayarlarýný belirle.
preview(obj); %kamerayý aç
pause(10); %görüntünün kameraya oturtulmasý için 10 saniye bekle.
frame = getsnapshot(obj); %YUY2 formatýndaki görünütüyü matris olarak al.
closepreview(obj);
    
rgbmap = YUY2toRGB(frame); %renk düzeltmesi yap.

%% Görüntüyü siyah-beyaz yap

Ibitmap = rgb2gray(rgbmap);

threshold = graythresh(Ibitmap);

sb = im2bw(Ibitmap, threshold);

%Siyah-beyaz gelen görüntüyü ters çevir
sb = ~sb;

imshow(sb);
pause(3);
close;
     
sbk = kucult(sb);
    
sbk = sbk';
    
%16x16 piksellik matrisi tek satýr (1x256) vektöre dönüþtür. 
sbv = sbk(:); 

%% Deðerlendirme


% Orijinal dataset olan 256 sütunluk dataset seçilmiþ ise 
% herhangi bir iþleme gerek kalmadan doðrudan networke girebiliriz.
% Ancak kýsaltýlmýþ veri setleri kullanýlacaksa paramAzalt ile girdiyi
% küçültmek gerekiyor.

sonuc = sim(net, sbv);

%% Karar Verme Kýsmý
 
rt_sonuc;