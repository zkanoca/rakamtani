close all;

%% Veri Giri�i
   
dosya = input('Dosya ad�n� yaz�n�z: ','s');
frame = imread(dosya);
 
rgbmap = YUY2toRGB(frame); %renk d�zeltmesi yap.

%% G�r�nt�y� siyah-beyaz yap

Ibitmap = rgb2gray(rgbmap);

threshold = graythresh(Ibitmap);

sb = im2bw(Ibitmap, threshold);

imshow(sb);
pause(3);
close;

sbk = sb';

%16x16 piksellik matrisi tek sat�r (1x256) vekt�re d�n��t�r. 
sbv = sbk(:); 

%% De�erlendirme
  

%Orijinal dataset olan 256 s�tunluk dataset se�ilmi� ise 
% herhangi bir i�leme gerek kalmadan do�rudan networke girebiliriz.
% Ancak k�salt�lm�� veri setleri kullan�lacaksa paramAzalt ile girdiyi
% k���ltmek gerekiyor.

        sonuc = sim(net, sbv);

%% Sonu�

rt_sonuc;