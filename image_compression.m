clear;
A = imread('sparrow.jpg'); % A is a 339x509x3 uint8 image array
X = double(reshape(A(:),length(A(:))/3,3)); % X is a (339*509)x3 double matrix
figure; 


scatter3(X(:,1),X(:,2),X(:,3),12,X/255,'filled');
xlabel('Red'); ylabel('Green'); zlabel('Blue');

k = 32;
replicates = 10;
[idx,C] = kmeans(X,k,'Replicates',replicates,'MaxIter',400);
% Map the pixels to the centroids and convert to uint8
Xcomp = C(idx,:);
Acomp = uint8(reshape(Xcomp,size(A)));

% Original and compressed scatter plots
subplot(2,2,1)
scatter3(X(:,1),X(:,2),X(:,3),12,X/255);
title(sprintf('Original: %d colors',length(unique(X,'rows'))));
xlabel('Red'); ylabel('Green');zlabel('Blue')
subplot(2,2,3);
scatter3(X(:,1),X(:,2),X(:,3),12,Xcomp/255);
xlabel('Red'); ylabel('Green');zlabel('Blue');
title(sprintf('Compressed: %d colors.', k));

% Original and compressed images 
subplot(2,2,2);
imshow(A); 
title('Original');
axis square
subplot(2,2,4);
imshow(uint8(Acomp))
title(sprintf('Compressed size: %0.2g%% of original',100*log2(k)/24))
axis square