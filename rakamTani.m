close all;
clc;


egit = ...
    input('Sistem egitilsin mi? (E/H): ', 's');

if strcmpi(egit, 'e')
     
  egitimYuzdesi = ...
      input('Veri setinin egitim i�in kullanilacak y�zdesi: ', 's');
  
  gecerlilikYuzdesi = ...
      input('Veri setinin ge�erlilik kontrol� i�in kullanilacak y�zdesi: ', 's');
  
  testYuzdesi = ...
      input('Veri setinin test i�in kullanilacak y�zdesi: ', 's');
  
  noronSay = ...
      input('N�ron sayisi: ', 's');
  
    ey = str2double(egitimYuzdesi);
    gy = str2double(gecerlilikYuzdesi);
    ty = str2double(testYuzdesi);
    ns = str2double(noronSay);
  
    display('Sistem egitim asamasinda...')
    display('L�tfen bekleyiniz...');
    
    sistemEgitimi;
end

sec = input('G�r�nt� kaynagini belirtiniz: Kamera (K) veya Dosya (D)? : ', 's');

if strcmpi(sec, 'k')
	rt_kamera;
elseif  strcmpi(sec, 'd')
    rt_dosya;
end