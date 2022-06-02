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
## @deftypefn {} {@var{retval} =} calculateError (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Heitor <heitor@pop-os>
## Created: 2022-05-29

function retval = calculateError (originalImg, decompressedImg)
  #errR = norm(double(vec(originalImg(:, :, 1) - decompressedImg(:, :, 1))), 2) / norm(double(vec(originalImg(:, :, 1))), 2);
  #errG = norm(double(vec(originalImg(:, :, 2) - decompressedImg(:, :, 2))), 2) / norm(double(vec(originalImg(:, :, 2))), 2);
  #errB = norm(double(vec(originalImg(:, :, 3) - decompressedImg(:, :, 3))), 2) / norm(double(vec(originalImg(:, :, 3))), 2);
  originalImg = double(imread(originalImg));
  decompressedImg = double(imread(decompressedImg));
  origR = originalImg(:, :, 1);
  origG = originalImg(:, :, 2);
  origB = originalImg(:, :, 3);
  decR = decompressedImg(:, :, 1);
  decG = decompressedImg(:, :, 2);
  decB = decompressedImg(:, :, 3);
  errR = norm(double(origR - decR)) / norm(double(origR));
  errG = norm(double(origG - decG)) / norm(double(origG));
  errB = norm(double(origB - decB)) / norm(double(origB));
  #errR = norm(originalImg(:, :, 1) - decompressedImg(:, :, 1))/norm(originalImg(:, :, 1));
  #errG = norm(originalImg(:, :, 2) - decompressedImg(:, :, 2))/norm(originalImg(:, :, 2));
  #errB = norm(originalImg(:, :, 3) - decompressedImg(:, :, 2))/norm(originalImg(:, :, 3));
  err = (errR + errG + errB)/3;
  retval = err;
  disp("err = ");
  fprintf("%10f\n", err);
endfunction
