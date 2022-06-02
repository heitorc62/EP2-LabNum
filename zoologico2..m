i = 1;
while(i <= 2)
  if(i == 1)
    extra = "Bilinear";
  else
    extra = "Bicubica";
  endif
  k = 7
  compress("seno.png", k);
  decompress("compressed.png", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "k7.png"), 'Quality', 100);

  k = 3
  decompress("compressed", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "1k3.png"), 'Quality', 100);
  
  decompress("imread", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "2k3.png"), 'Quality', 100);
  
  decompress("imread", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "3k3.png"), 'Quality', 100);
  i = i + 1;
endwhile