% load
load("GexprData1.mat");
% transpose the matrix (worked with rows for values...)
X = Xmat';

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:size(X)), :);

bestErrorsPerInit = zeros(1,9);
for k = 2:10  
  bestErrorsPerInit = zeros(1,20);
  for i = 1:20
    % Get random centroids from the dataset
    centroidRows = randperm(size(X)(1));
    initCentroids = X(centroidRows(1:k), :);
    
    [assignments, centroids, error] = kMeans(X,k,initCentroids);
    bestErrorsPerInit(i) = min(error);
  endfor
  bestPerK(k-1) = min(bestErrorsPerInit);
endfor
figure(1)
plot(bestPerK)
title("K-Function (randperm), std=0.5, L2-Norm (2)")
saveas (1, "kFunc_eucl_2.png");

bestErrorsPerInit = zeros(1,9);
for k = 2:10  
  bestErrorsPerInit = zeros(1,20);
  for i = 1:20
    % Get random centroids from the dataset
    centroidRows = randperm(size(X)(1));
    initCentroids = X(centroidRows(1:k), :);
    
    [assignments, centroids, error] = kMeans(X,k,initCentroids,"Manhatten");
    bestErrorsPerInit(i) = min(error);
  endfor
  bestPerK(k-1) = min(bestErrorsPerInit);
endfor
figure(2)
plot(bestPerK)
title("K-Plot (randperm), std=0.5, L1-Norm (2)")
saveas (2, "kFunc_manh_2.png");
