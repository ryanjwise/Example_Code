def decimal_to_binary(decimal)
  binary_arry = []
  while decimal >= 2
    remainder = decimal % 2
    binary_arry.unshift(remainder)
    decimal /= 2
  end
  binary_arry.unshift(decimal).join
end
