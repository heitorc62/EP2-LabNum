for i=1:2
  if(i == 1)
    imagem = "singstreet";
  else
    imagem = "scrat";
  endif
  for metodo=1:2
    for j=1:2
      if(j == 1)
        k = 1;
      else
        k = 3;
      endif
      for q=1:2
        if(q == 1)
          h = 0.1;
        else
          h = 5;
        endif
        compress(strcat(imagem, ".png"), k);
        decompress("compressed.png", metodo, k, h);
        J = imread("decompressed.png");
        if(metodo == 1)
          met = "Bilinear";
        else
          met = "Bicubica";
        endif
        imwrite(uint8(J), strcat(imagem, met, num2str(k), num2str(h), ".png"));
        imagem
        met
        h
        k
        calculateError(strcat(imagem, ".png"), "decompressed.png");
      endfor
    endfor
  endfor
endfor