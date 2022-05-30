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

function retval = func1 (A)
  p = size(A, 2);
  B = ones(p, p, 3);
  for i=0:(p-1)
    for j=0:(p-1)
      B(i + 1, j + 1, 1) = sin(j) * 127.5 + 127.5;
      B(i + 1, j + 1, 2) = (((sin(j) + sin(p-1 - i))/2) * 127.5) + 127.5;
      B(i + 1, j + 1, 3) = sin(p-1 - i) * 127.5 + 127.5;
    endfor
  endfor
  retval = B;

endfunction
