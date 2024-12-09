function result = myFunctionCorrected(x)
  if isscalar(x)
    if x > 5
      result = x * 2;
    else
      result = x + 2;
    end
  elseif isvector(x)
    result = zeros(size(x));
    for i = 1:length(x)
      if x(i) > 5
        result(i) = x(i) * 2;
      else
        result(i) = x(i) + 2;
      end
    end
  else
    error('Input must be a scalar or a vector.');
  end
end

%Example Usage
x = 10;
y = myFunctionCorrected(x);
disp(y); % Output: 20
x = -2;
y = myFunctionCorrected(x);
disp(y); % Output: 0
x = [1 2 3 6 10];
y = myFunctionCorrected(x);
disp(y); % Output: [3 4 5 12 20]