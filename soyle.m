function soyle(enBuyuk, indis)
    yol = 'rakamlarwav/';

    s = audioread(strcat(yol,int2str(indis), '.wav'));
    %onIfade = wavread(strcat(yol,'9999'));
    
    if enBuyuk >= .9
        onIfade = audioread(strcat(yol,'1000.wav'));
        sound(onIfade, 44100);
        pause(.9);
        sound(s, 44100);
    elseif enBuyuk < .9 && enBuyuk >= .6
        onIfade = audioread(strcat(yol,'800.wav'));
        sound(onIfade, 44100);
        pause(.9);
        sound(s, 44100);
    else%if enBuyuk < .6 && enBuyuk >= .4
        onIfade = audioread(strcat(yol,'500.wav'));
        sound(onIfade, 44100);
        pause(.9);
        sound(s, 44100);
    %else 
     %   sound(onIfade, 44100);
    end

    display(sprintf('Görüntüsü al?nan say?, yüzde %5.2f ihtimalle %d olarak belirlendi.', enBuyuk*100, indis));

%     bildi = input('Bildi mi? (E/H): ', 's');
%     
%     if strcmpi(bildi, 'e')
%         ekle;
%     end
%     
    
end

 