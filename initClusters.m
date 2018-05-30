% Initialize 4 clusters in the unit square
% 100 data points each
% return all cluster and a concat
function [a,b,c,d,X] = initClusters(std=0.5, N =100)
  a = generateCluster(std,[0,0],N);
  b = generateCluster(std,[1,0],N);
  c = generateCluster(std,[0,1],N);
  d = generateCluster(std,[1,1],N);
  X = vertcat(a,b,c,d);
endfunction
