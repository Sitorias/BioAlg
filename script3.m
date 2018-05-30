% Exercise 1 c)
% increment k

[a,b,c,d,X] = initClusters(0.5);
%Plot raw clusters
figure(1)
plotClusters(a,b,c,d)
title("std=0.5, n=100 (1c)")
saveas (1, "data_1c.png");

% iterate K
bestErrorsPerInit = zeros(1,9);
for k = 2:10  
  bestErrorsPerInit = zeros(1,20);
  % best of 20 iterations
  for i = 1:20
    % Get random centroids from the dataset
    centroidRows = randperm(size(X)(1));
    initCentroids = X(centroidRows(1:k), :);
    % k-means
    [assignments, centroids, error] = kMeans(X,k,initCentroids);
    % save the best per initialization!
    bestErrorsPerInit(i) = min(error);
  endfor
  % save the best per k!
  bestPerK(k-1) = min(bestErrorsPerInit);
endfor
figure(2)
plot(bestPerK)
title("K-Function (randperm), std=0.5, L2-Norm (1c)")
saveas (2, "kFunc_1c.png");

[a,b,c,d,X] = initClusters(0.25);
figure(3)
plotClusters(a,b,c,d)
title("std=0.25, n=100 (4 clusters) (1c)")
saveas (3, "025data_1c.png");

% Get random centroids from the dataset
centroidRows = randperm(size(X)(1));
initCentroids = X(centroidRows(1:4), :);

% Plot
[assignments, centroids, error] = kMeans(X,4,initCentroids);
XAssigned = horzcat(X, assignments);
figure(4)
plotKMeans(XAssigned, centroids)
title("K-Function (randperm), std=0.25, L2-Norm (1c)")
saveas(4, "025cluster_1c.png");

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
figure(5)
plot(bestPerK)
title("K-Function (randperm), std=0.25, L2-Norm (1c)")
saveas (5, "kFunc025_1c.png");
