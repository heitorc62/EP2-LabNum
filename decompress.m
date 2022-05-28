## Copyright (C) 2022 Heitor
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} decompress (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Heitor <heitor@pop-os>
## Created: 2022-05-28

function retval = decompress (compressedImg, k)
    n = size(compressedImg, 2);
    p = n + ((n - 1) * k);  
    D = zeros(p, p, 3);
    D = D - 1;
    for i=0:n-1
      for j=0:n-1 
        D(i*(k + 1) + 1, j*(k + 1) + 1, :) = compressedImg(i+1, j+1, :);
      endfor
    endfor
    
    
    for q=1:k+1
      aux = 0
      for i=0:1
        for j=0:1
          elemento = D(i*(k + 1) + 1, j*(k + 1) + 1);
        
        endfor
      endfor
    endfor
    
    
    
    
    
    retval = D;

   

endfunction
