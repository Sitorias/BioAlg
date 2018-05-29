## Copyright (C) 2018 Sven Durchholz
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} IntializeClusters (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Sven Durchholz <Sven@Svens-MacBook-Pro-2.local>
## Created: 2018-05-25

function [a,b,c,d,X] = InitializeClusters(std=0.5, N =100)
  a = generateCluster(std,[0,0],N);
  b = generateCluster(std,[1,0],N);
  c = generateCluster(std,[0,1],N);
  d = generateCluster(std,[1,1],N);
  X = horzcat(a,b,c,d);
endfunction