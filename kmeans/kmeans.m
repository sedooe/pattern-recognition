function [ID,C]= k_means(X, C)
  K = size(C, 2); # number of desired clusters
  T = 0.05; # threshold
  n = size(X,2);

  ID = ones(1, n);

  step = 0;
  prev_err = 0;
  err = 0;
  while(1)  
    step = step +1;
    
    for j = 1:n
      # Find nearest centroid for X(:,j)
      min_i = 1;
      min_dist = distance(C(:,1),X(:,j)); 
      for i = 2:K
        d = distance(C(:,i), X(:,j));
        if ( d < min_dist )
            min_dist = d;
            min_i = i;
        end
      end
      ID(1,j) = min_i; 
    end
    
    prev_err = err;
    for i = 1:K # update the centroidsi
      ID_i = find(ID == i);
      C(:,i) = sum(X(:,ID_i),2)/length(ID_i);
      err = sum(distance(X(:,ID_i), repmat(C(:,i),1,length(ID_i))));
    end

    if (abs(prev_err - err) < T) # if there is no change bigger than threshold
      break;
    end
  end
end