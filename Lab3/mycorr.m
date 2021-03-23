% Ayush Basak
% 19ucc016
function [output] = mycorr(x,y)
    y1 = fliplr(y);
    nx = length(x);
    ny = length(y);
    n = nx+ny-1;
    x = [x, zeros(1,n-nx)];
    y1 = [y1, zeros(1,n-ny)];
    for i=1:n
        output(i) = 0;
        for j = 1:n
            if(i-j+1>0)
                output(i) = output(i)+(x(j)*y1(i-j+1));
            end
        end
    end
end