% Exercise 1 d)
% robust variante (Manhatten)

[a,b,c,d,X] = initClusters(0.5);
figure(1)
plotClusters(a,b,c,d)
title("std=0.5, n=100 (4 clusters) (1d)")
saveas (1, "data_1d.png");

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:4), :);

% Plot
[assignments, centroids, error] = kMeans(X,4,initCentroids,"Manhatten");
XAssigned = horzcat(X, assignments);
figure(2)
plotKMeans(XAssigned, centroids)
title("Cluster (randperm), std=0.5, L1-Norm (1d)")
saveas (2, "cluster_1d.png");

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

% x-axis is actually k-1! (How to change this in octave?)
figure(3)
plot(bestPerK)
title("K-Function (randperm), std=0.5, L1-Norm (1d)")
saveas (3, "Kfunc_1d.png");

[a,b,c,d,X] = initClusters(0.25);
figure(4)
plotClusters(a,b,c,d)
title("std=0.25, n=100 (4 clusters) (1d)")
saveas(4,"data025_1d.png")

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:4), :);

% Plot
[assignments, centroids, error] = kMeans(X,4,initCentroids,"Manhatten");
XAssigned = horzcat(X, assignments);
figure(5)
plotKMeans(XAssigned, centroids)
title("Cluster (randperm), std=0.25, L1-Norm (1d)")
saveas (5, "cluster025_1d.png");


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
figure(6)
plot(bestPerK)
title("K-Function (randperm), std=0.25, L1-Norm (1d)")
saveas (6, "kFunc025_1d.png");
