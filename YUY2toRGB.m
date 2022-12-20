function yeniRGB = YUY2toRGB(data)
%% input is (:,:,1:3), where
%% (:,:,1) is Y, (:,:,2) is U, (:,:,3) is V


Y = single(data(:,:,1));
U = single(data(:,:,2));
V = single(data(:,:,3));

C = Y-16;
D = U - 128;
E = V - 128;

R = uint8((298*C+409*E+128)/256);
G = uint8((298*C-100*D-208*E+128)/256);
B = uint8((298*C+516*D+128)/256);

yeniRGB = uint8(zeros(size(data)));
yeniRGB(:,:,1)=R;
yeniRGB(:,:,2)=G;
yeniRGB(:,:,3)=B;



