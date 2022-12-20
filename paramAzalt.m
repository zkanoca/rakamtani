function ret = paramAzalt(vektor, bitSay)
% Gelen 256 sütunluk veride veri kaybý olmadan 
% bitSay adet sütuna düþüren fonksiyon.
  
	ind = 0;
    
	[sat sut] = size(vektor);
    
	tempSut = round(sut/bitSay);
    tempSat = sat;

	temp = zeros(tempSat, tempSut);
    
	for say = 1:bitSay:sut
    	
        ind = ind + 1;
        say2 = say + bitSay - 1;
        
        decim = bi2de(vektor(1,say:say2));
        
        temp(ind) = decim;
	end
    
    ret = temp;
    
end