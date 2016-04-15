function w = pla3(X, Y, bias)
  inputs = [X Y; ones(1, size([X Y], 2))]; ### X, Y and 1's.
  outputs = [ones(1, size(X, 2)) -1*ones(1, size(Y, 2))]; ### 1's for X, -1's for Y.
  w = zeros(3, 1);
  for i = 1 : 100 # maximum iteration.
    for j = 1 : size(inputs,2)
      if (sign(outputs(j)) == -1)
        if (w' * inputs(:, j) >= -1*bias) 
          w += inputs(:, j) * outputs(j);
        end
      else
        if (w' * inputs(:, j) <= bias)
          w += inputs(:, j) * outputs(j);
        end
      end
    end
    
    if (checkBias(w, inputs, outputs, bias))
      return;
    end  
  end
  
  return;
end
