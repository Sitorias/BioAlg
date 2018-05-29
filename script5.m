load("GexprData1.mat");
X = Xmat';

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:size(X)), :);

bestPerK = zeros(1,10);
for k = 2:10  
  bestErrorsPerInit = zeros(1,20);
  for i = 1:20
    % Get random centroids from the dataset
    centroidRows = randperm(size(X)(1));
    initCentroids = X(centroidRows(1:k), :);
    
    [assignments, centroids, error] = kMeans(X,k,initCentroids);
    bestErrorsPerInit(i) = min(error);
  endfor
  bestPerK(k) = min(bestErrorsPerInit);
endfor
figure()
plot(bestPerK)
title("K-Means (randperm), std=0.5, L2-Norm")

bestPerK = zeros(1,10);
for k = 2:10  
  bestErrorsPerInit = zeros(1,20);
  for i = 1:20
    % Get random centroids from the dataset
    centroidRows = randperm(size(X)(1));
    initCentroids = X(centroidRows(1:k), :);
    
    [assignments, centroids, error] = kMeans(X,k,initCentroids,2);
    bestErrorsPerInit(i) = min(error);
  endfor
  bestPerK(k) = min(bestErrorsPerInit);
endfor
figure()
plot(bestPerK)
title("K-Means (randperm), std=0.5, L1-Norm")