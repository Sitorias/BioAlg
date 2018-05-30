% Just a little helper class, removing redundancy!
% Plot 4 cluster
function plotClusters (a,b,c,d) 
  scatter(a(:,1),a(:,2),100,'fill')
  hold on
  scatter(b(:,1),b(:,2),100,'fill')
  hold on
  scatter(c(:,1),c(:,2),100,'fill')
  hold on
  scatter(d(:,1),d(:,2),100,'fill')
  hold off
endfunction
