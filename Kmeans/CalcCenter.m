function Center=CalcCenter(Mat) %calculate the center of the matrix
[m,n] = size(Mat);
  for i=1:m
     arr = Mat(i,:);
     c = mean(arr);
     Center(i,1)=c;
  end
end