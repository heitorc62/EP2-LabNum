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
## @deftypefn {} {@var{retval} =} func4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Heitor <heitor@pop-os>
## Created: 2022-05-30

function retval = func4 ()
  p = 761;
  B = ones(p, p, 3);
  for i=0:(p-1)
    for j=0:(p-1)
      B(p-1 - i + 1, j + 1, 1) = (10**(2.4/p * j) + 10**(2.4/p * i))/2 + (j/p*255);
      B(p-1 - i + 1, p-1 - j + 1, 2) = -1 * (((32/p * j) - 20)**2) + 255;
      B(p-1 - i + 1, j + 1, 3) = 1;
    endfor
  endfor
  imwrite(uint8(B), "exLinear.png", 'Quality', 100);
  retval = B;
endfunction