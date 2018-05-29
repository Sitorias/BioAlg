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
## @deftypefn {} {@var{retval} =} initClusters (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Sven Durchholz <Sven Durchholz@STARDUST>
## Created: 2018-05-29


function [a,b,c,d,X] = initClusters(std=0.5, N =100)
  a = generateCluster(std,[0,0],N);
  b = generateCluster(std,[1,0],N);
  c = generateCluster(std,[0,1],N);
  d = generateCluster(std,[1,1],N);
  X = vertcat(a,b,c,d);
  
  figure()
  scatter(a(:,1),a(:,2),100,'fill')
  hold on
  scatter(b(:,1),b(:,2),100,'fill')
  hold on
  scatter(c(:,1),c(:,2),100,'fill')
  hold on
  scatter(d(:,1),d(:,2),100,'fill')
  hold off
endfunction
