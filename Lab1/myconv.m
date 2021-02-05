function y = myconv(x,h)
  lenX = length(x)
  lenH = length(h)
  lenY = lenX + lenH - 1
  X = [x zeros(1,lenH)]
  H = [h zeros(1,lenX)]
  for i = 1:lenY
    y(i) = 0
    for j= 1:lenX
      if (i-j+1 > 0)
        y(i) = y(i) + X(j)*H(i-j+1)
      end
    end
  end
end