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
## @deftypefn {} {@var{retval} =} plotKMeans (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Sven Durchholz <Sven Durchholz@STARDUST>
## Created: 2018-05-29

function plotKMeans (XAssigned, centroids)
  scatter(XAssigned(:,1),XAssigned(:,2),100,XAssigned(:,3),"fill")
  hold on
  scatter(centroids(:,1),centroids(:,2),200,"r","s","fill")
  hold off
endfunction
