function result = checkBias(w, inputs, outputs, bias)
  result = false;
  A = w' * inputs;
  for i = 1 : size(A, 2)
    if (outputs(i) == -1)
      if (A(i) > -1*bias)
        return;
      end  
    else
      if (A(i) < bias)
        return;
      end
    end
  end
  
  result = true;
  return;
end
