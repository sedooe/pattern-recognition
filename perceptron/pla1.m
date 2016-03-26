function w = pla1(X, Y)
  inputs = [X Y; ones(1, size([X Y], 2))]; ### X, Y and 1's.
  outputs = [ones(1, size(X, 2)) -1*ones(1, size(Y, 2))]; ### 1's for X, -1's for Y.
  w = zeros(3, 1);
  while (sign(w' * inputs) ~= outputs)
    for j = 1 : size(inputs,2)
      if (sign(w' * inputs(:, j)) ~= outputs(j)) 
        w += inputs(:, j) * outputs(j);
      end
    end 
  end
  
  return;
end
