close all;

%% Veri Giriþi
   
dosya = input('Dosya adýný yazýnýz: ','s');
frame = imread(dosya);
 
rgbmap = YUY2toRGB(frame); %renk düzeltmesi yap.

%% Görüntüyü siyah-beyaz yap

Ibitmap = rgb2gray(rgbmap);

threshold = graythresh(Ibitmap);

sb = im2bw(Ibitmap, threshold);

imshow(sb);
pause(3);
close;

sbk = sb';

%16x16 piksellik matrisi tek satýr (1x256) vektöre dönüþtür. 
sbv = sbk(:); 

%% Deðerlendirme
  

%Orijinal dataset olan 256 sütunluk dataset seçilmiþ ise 
% herhangi bir iþleme gerek kalmadan doðrudan networke girebiliriz.
% Ancak kýsaltýlmýþ veri setleri kullanýlacaksa paramAzalt ile girdiyi
% küçültmek gerekiyor.

        sonuc = sim(net, sbv);

%% Sonuç

rt_sonuc;