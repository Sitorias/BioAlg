% Plot the kMeans result
function plotKMeans (XAssigned, centroids)
  scatter(XAssigned(:,1),XAssigned(:,2),100,XAssigned(:,3),"fill")
  hold on
  scatter(centroids(:,1),centroids(:,2),200,"r","s","fill")
  hold off
endfunction
