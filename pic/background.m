n=300;
m=400;

fig = zeros(n,m,3);

for i=1:n
    for j=1:m
        if(norm([i j] - [100.5 200.5])<=50)
            fig(i,j,1) = fig(i,j,1) + 3*(1/norm([i j] - [100.5 200.5]))/4;
        end
        if(norm([i j] - [77.5 228.5])<=50)
            fig(i,j,2) = fig(i,j,2) + 3*(1/norm([i j] - [77.5 228.5]))/4;
        end
        if(norm([i j] - [60.5 53.5])<=50)
            fig(i,j,1) = fig(i,j,1) + 3*(1/norm([i j] - [60.5 23.5]))/4;
            fig(i,j,3) = fig(i,j,3) + 3*(1/norm([i j] - [60.5 23.5]))/4;
        end
        if(norm([i j] - [208.5 101.5])<=50)
            fig(i,j,2) = fig(i,j,2) + 1*(1/norm([i j] - [208.5 101.5]))/4;
            fig(i,j,3) = fig(i,j,3) + 3*(1/norm([i j] - [208.5 101.5]))/4;
        end
        if(norm([i j] - [177.5 305.5])<=50)
            fig(i,j,3) = fig(i,j,3) + 3*(1/norm([i j] - [177.5 305.5]))/4;
        end
        if(norm([i j] - [53.5 331.5])<=50)
            fig(i,j,1) = fig(i,j,1) + 3*(1/norm([i j] - [53.5 331.5]))/4;
        end
        if(norm([i j] - [248.5 66.5])<=50)
            fig(i,j,1) = fig(i,j,1) + 3*(1/norm([i j] - [248.5 66.5]))/4;
            fig(i,j,2) = fig(i,j,2) + 1*(1/norm([i j] - [248.5 66.5]))/4;
        end
        if(norm([i j] - [108.5 26.5])<=50)
            fig(i,j,1) = fig(i,j,1) + 2*(1/norm([i j] - [108.5 26.5]))/4;
            fig(i,j,2) = fig(i,j,2) + 8*(1/norm([i j] - [108.5 26.5]))/11;
        end
        if(norm([i j] - [248.5 196.5])<=50)
            fig(i,j,1) = fig(i,j,1) + 2*(1/norm([i j] - [248.5 196.5]))/4;
            fig(i,j,2) = fig(i,j,2) + 3*(1/norm([i j] - [248.5 196.5]))/4;
            fig(i,j,3) = fig(i,j,3) + 1*(1/norm([i j] - [248.5 196.5]))/4;
        end
        if(norm([i j] - [48.5 136.5])<=30)
            fig(i,j,1) = fig(i,j,1) + 1*(1/norm([i j] - [48.5 136.5]))/4;
            fig(i,j,2) = fig(i,j,2) + 1*(1/norm([i j] - [48.5 136.5]))/4;
            fig(i,j,3) = fig(i,j,3) + 1*(1/norm([i j] - [48.5 136.5]))/4;
        end
        if(norm([i j] - [248.5 336.5])<=80)
            fig(i,j,1) = fig(i,j,1) + 2*(1/norm([i j] - [248.5 336.5]))/5;
            fig(i,j,2) = fig(i,j,2) + 3*(1/norm([i j] - [248.5 336.5]))/16;
            fig(i,j,3) = fig(i,j,3) + 1*(1/norm([i j] - [248.5 336.5]))/4;
        end
        if(norm([i j] - [288.5 326.5])<=80)
            fig(i,j,1) = fig(i,j,1) + 2*(1/norm([i j] - [288.5 326.5]))/5;
            fig(i,j,2) = fig(i,j,2) + 3*(1/norm([i j] - [288.5 326.5]))/8;
            fig(i,j,3) = fig(i,j,3) + 1*(1/norm([i j] - [288.5 326.5]))/4;
        end
        if(norm([i j] - [268.5 366.5])<=100)
            fig(i,j,1) = fig(i,j,1) + 3*(1/norm([i j] - [268.5 366.5]))/5;
            fig(i,j,2) = fig(i,j,2) + 5*(1/norm([i j] - [268.5 366.5]))/8;
            fig(i,j,3) = fig(i,j,3) + 1*(1/norm([i j] - [268.5 366.5]))/8;
        end
        if(norm([i j] - [138.5 216.5])<=100)
            fig(i,j,1) = fig(i,j,1) + 3*(1/norm([i j] - [138.5 216.5]))/13;
            fig(i,j,3) = fig(i,j,3) + 5*(1/norm([i j] - [138.5 216.5]))/8;
        end
    end
end

imshow(fig)