%%En uygun de�erin bulunup g�sterilmesi

[enBuyuk indis] = max(sonuc);

%Saymaya s�f�rdan ba�lamas� i�in indis de�erini bir azalt.
indis = indis - 1;

%% Sonu�
  
  figure;  
  subplot(1,2,1);
  
  bar([0 1 2 3 4 5 6 7 8 9],sonuc);
  movegui([250 250]);

  subplot(1,2,2);
  title('??lenen G�r�nt�');
  imshow(sbk');

  soyle(enBuyuk, indis);