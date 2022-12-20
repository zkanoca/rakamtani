function yeniResim = kucult(resim)    
    yeniResim = zeros(16); 
    
    % elde edilen resmin sağdan ve soldan 40ar piksel daralt
    % 240x240 resim yap.
    resim = resim(:,41:280); 
        
%     for pr = 1:15:240
%         
%         prs = pr + 14;    
%         sat = prs/15;
%         for pc = 1:15:240   
%             
%             pcs = pc + 14;
%             sut = pcs/15;
%             
%             %siyah piksellerin oranını hesapla. 225: (240/16)^2
%             po = sum(sum(resim(pr:prs,pc:pcs)))/225;
%             
%             %siyah piksel sayısı %50'den fazla ise siyah yap.
%             if po > .5  
%                 yeniResim(sat, sut) = 1;
%             end               
%         end
%     end  

    yeniResim = imresize(resim, [16 16]);

end
