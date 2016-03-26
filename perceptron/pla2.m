function w = pla2(X, Y)
  inputs = [X Y; ones(1, size([X Y], 2))]; ### X, Y and 1's.
  outputs = [ones(1, size(X, 2)) -1*ones(1, size(Y, 2))]; ### 1's for X, -1's for Y.
  w = ones(3, 1);
  for i = 1 : 100 # maximum iteration.
    misClassifieds = [];
    for j = 1 : size(inputs,2)
      if (sign(w' * inputs(:, j)) ~= outputs(j)) 
        misClassifieds(end+1) = j;
      end
    end
    w = updateW(inputs, outputs, w, misClassifieds);
    
    if (sign(w' * inputs) == outputs)
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