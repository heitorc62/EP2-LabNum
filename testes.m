#teste de funções

#func1
A = zeros(299, 299, 3);
B = func1(A);
imwrite(uint8(B), "original1.png", 'Quality', 100);
O = imread("original1.png");
compress(O, 1);
C = imread("compressed.png");
decompress(C, 1, 1, 1);
D = imread("decompressed.png");
calculateError(O, D);
decompress(C, 2, 1, 1);
D = imread("decompressed.png");
calculateError(O, D);





