#teste da bicubica
A = zeros(5);

for i=1:25
  A(i) = i*i/2.5;
endfor
A
imwrite(uint8(A), "origin.png", 'Quality', 100);

B = compress("origin.png", 1);
B

C = decompress("compressed.png", 1, 1, 1);
C

C = decompress("compressed.png", 2, 1, 1);
C


