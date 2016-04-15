function w = pla4(X, Y, bias)
  inputs = [X Y; ones(1, size([X Y], 2))]; ### X, Y and 1's.
  outputs = [ones(1, size(X, 2)) -1*ones(1, size(Y, 2))]; ### 1's for X, -1's for Y.
  w = ones(3, 1);
  for i = 1 : 100 # maximum iteration.
    misClassifieds = [];
    for j = 1 : size(inputs,2)
      if (sign(outputs(j)) == -1)
        if (w' * inputs(:, j) >= -1*bias) 
          misClassifieds(end+1) = j;
        end
      else
        if (w' * inputs(:, j) <= bias)
          misClassifieds(end+1) = j;
        end
      end
    end
    w = updateW(inputs, outputs, w, misClassifieds);
    
    if (checkBias(w, inputs, outputs, bias))
      return;
    end  
  end
  return;
end

function w = updateW(inputs, outputs, w, misClassifieds)
  for i = 1 : size(misClassifieds, 2)
    w += inputs(:, misClassifieds(i)) * outputs(misClassifieds(i));
  end
  return;
end