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
## @deftypefn {} {@var{retval} =} func3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Heitor <heitor@pop-os>
## Created: 2022-05-30

function retval = func3 (A)
  p = size(A, 2);
  B = ones(p, p, 3);
  distMax = (p/2)**2 + (p/2)**2;
  for i=0:(p-1)
    for j=0:(p-1)
      distJ = ((p/2) - (j+1))**2;
      distI = ((p/2) - (i+1))**2;
      B(i + 1, j + 1, 1) = 255/distMax*distJ;
      B(i + 1, j + 1, 2) = 255/distMax*(distI + distJ);
      B(i + 1, j + 1, 3) = 255/distMax*distI;
    endfor
  endfor
  imwrite(uint8(B), "expLinear.png", 'Quality', 100);
  retval = B;
endfunction