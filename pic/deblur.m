%fig = rand(300,400,3);
ori_fig = double(rgb2gray(imread('rabbitcandy01.jpg')));
[n,m,a] = size(fig);
fig = ori_fig + 30*randn(n,m,a);
figure(1)
imshow(uint8(ori_fig))
figure(2)
imshow(uint8(fig))

for iter = 1:10
    fig2 = zeros(n,m,a);
    
    fig2(1,1,:) = (2*fig(1,1,:) + fig(1,2,:) + fig(2,1,:))/4;
    fig2(1,m,:) = (2*fig(1,m,:) + fig(1,m-1,:) + fig(2,m,:))/4;
    fig2(n,1,:) = (2*fig(n,1,:) + fig(n,2,:) + fig(n-1,1,:))/4;
    fig2(n,m,:) = (2*fig(n,m,:) + fig(n,m-1,:) + fig(n-1,m,:))/4;
    
    for i=2:n-1
        fig2(i,1,:) = (fig(i-1,1,:) + 2 * fig(i,1,:) + fig(i+1,1,:))/4;
        fig2(i,m,:) = (fig(i-1,m,:) + 2 * fig(i,m,:) + fig(i+1,m,:))/4;
    end
    
    for j=2:m-1
        fig2(1,j,:) = (fig(1,j-1,:) + 2 * fig(1,j,:) + fig(1,j+1,:))/4;
        fig2(n,j,:) = (fig(n,j-1,:) + 2 * fig(n,j,:) + fig(n,j+1,:))/4;
    end
    
    for i=2:n-1
        for j=2:m-1
            fig2(i,j) = (4 * fig(i,j) + fig(i+1,j) + fig(i-1,j) + fig(i,j+1) + fig(i,j-1))/8;
        end
    end
    
    fig = fig2;
    
    figure(2+iter)
    imshow(uint8(fig2))
end