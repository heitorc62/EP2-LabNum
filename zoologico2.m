i = 1;
while(i <= 2)
  if(i == 1)
    extra = "Bilinear";
  else
    extra = "Bicubica";
  endif
  erro = strcat("erro ", extra);
  k = 7
  compress("seno.png", k);
  decompress("compressed.png", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "k7.png"), 'Quality', 100);
  disp(strcat(erro, "k7"));
  calculateError("seno.png", "decompressed.png");

  k = 1
  decompress("compressed.png", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "1k1.png"), 'Quality', 100);
  
  decompress("decompressed.png", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "2k1.png"), 'Quality', 100);
  
  decompress("decompressed.png", i, k, 0.1);
  J = imread("decompressed.png");
  imwrite(uint8(J), strcat(extra, "3k1.png"), 'Quality', 100);
  disp(strcat(erro, "3k1"));
  calculateError("seno.png", "decompressed.png");
  i = i + 1;
endwhile