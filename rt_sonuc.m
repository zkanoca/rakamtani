%%En uygun deðerin bulunup gösterilmesi

[enBuyuk indis] = max(sonuc);

%Saymaya sýfýrdan baþlamasý için indis deðerini bir azalt.
indis = indis - 1;

%% Sonuç
  
  figure;  
  subplot(1,2,1);
  
  bar([0 1 2 3 4 5 6 7 8 9],sonuc);
  movegui([250 250]);

  subplot(1,2,2);
  title('??lenen Görüntü');
  imshow(sbk');

  soyle(enBuyuk, indis);