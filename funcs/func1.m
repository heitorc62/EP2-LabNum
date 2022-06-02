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
## @deftypefn {} {@var{retval} =} func1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Heitor <heitor@pop-os>
## Created: 2022-05-30
function retval = func1 ()
  p = 761;
  B = ones(p, p, 3);
  k = 2.069e-3;
  fMin = 0;
  fMax = 1;
  for i=0:(p-1)
    for j=0:(p-1)
      B(p-1 - i + 1, j + 1, 1) = floor(((sin(i * k) - fMin)/(fMax - fMin)) * 256);
      B(p-1 - i + 1, j + 1, 2) = floor((((sin(j * k) + sin(i * k))/2 - fMin)/(fMax - fMin)) * 256);
      B(p-1 - i + 1, j + 1, 3) = floor(((sin(i * k) - fMin)/(fMax - fMin)) * 256);
    endfor
  endfor
  imwrite(uint8(B), "seno.png", 'Quality', 100);
  retval = B;

endfunction
