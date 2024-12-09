function result = myFunction(x)
  if x > 5
    result = x * 2;
  else
    result = x + 2; 
  end
end

% Example usage with unexpected results
x = 10;
y = myFunction(x);
disp(y);  % Expected output: 20
x = -2;
y = myFunction(x);
disp(y);  % Expected output: 0, but outputs -2 + 2 = 0

% Another example that causes an error
x = [1 2 3];
y = myFunction(x);  % Error: Operands to the || and && operators must be convertible to logical scalar values.