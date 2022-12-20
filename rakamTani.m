close all;
clc;


egit = ...
    input('Sistem egitilsin mi? (E/H): ', 's');

if strcmpi(egit, 'e')
     
  egitimYuzdesi = ...
      input('Veri setinin egitim için kullanilacak yüzdesi: ', 's');
  
  gecerlilikYuzdesi = ...
      input('Veri setinin geçerlilik kontrolü için kullanilacak yüzdesi: ', 's');
  
  testYuzdesi = ...
      input('Veri setinin test için kullanilacak yüzdesi: ', 's');
  
  noronSay = ...
      input('Nöron sayisi: ', 's');
  
    ey = str2double(egitimYuzdesi);
    gy = str2double(gecerlilikYuzdesi);
    ty = str2double(testYuzdesi);
    ns = str2double(noronSay);
  
    display('Sistem egitim asamasinda...')
    display('Lütfen bekleyiniz...');
    
    sistemEgitimi;
end

sec = input('Görüntü kaynagini belirtiniz: Kamera (K) veya Dosya (D)? : ', 's');

if strcmpi(sec, 'k')
	rt_kamera;
elseif  strcmpi(sec, 'd')
    rt_dosya;
end