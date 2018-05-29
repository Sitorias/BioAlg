% Exercise 1 c)
% increment k

[a,b,c,d,X] = initClusters(0.5);
title("std=0.5, n=100 (4 clusters)")

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:4), :);

% Plot
[assignments, centroids, error] = kMeans(X,4,initCentroids);
XAssigned = horzcat(X, assignments);
plotKMeans(XAssigned, centroids)
title("K-Means (randperm), std=0.5, L2-Norm")

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

[a,b,c,d,X] = initClusters(0.25);
title("std=0.25, n=100 (4 clusters)")

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:4), :);

% Plot
[assignments, centroids, error] = kMeans(X,4,initCentroids);
XAssigned = horzcat(X, assignments);
plotKMeans(XAssigned, centroids)
title("K-Means (randperm), std=0.25, L2-Norm")

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
title("K-Means (randperm), std=0.25, L2-Norm")
