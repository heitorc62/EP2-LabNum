i = 1
h = [0.0001 100 1000]
while i <= 3
  for j=1:3
    compress("exLinear.png", i);
    disp("h = "), disp(h(j));
    disp("k = "), disp(i);
    decompress("compressed.png", 1, i, h(j));
    opa = imread("decompressed.png");
    hk = strcat(num2str(h(j)), num2str(i));
    imwrite(uint8(opa), strcat("decompressedBilinear", hk, ".png"), 'Quality', 100);
    disp("Bilinear: ");
    calculateError("exLinear.png", "decompressed.png");
    decompress("compressed.png", 2, i, h(j));
    opa = imread("decompressed.png");
    imwrite(uint8(opa), strcat("decompressedBicúbica", hk, ".png"), 'Quality', 100);
    disp("Bicubica");
    calculateError("exLinear.png", "decompressed.png");
  endfor
  i = i + 2;
endwhile