a = imread('C:\Users\Hemal\Pictures\Picasa\Exports\Pictures\abc.jpg');
a = rgb2gray(a(1:300,1:300,:));
b=zeros(size(a));
c=zeros(size(a));
modifyA=padarray(a,[1 1]);
        x=[1:3]';
        y=[1:3]';     
for i= 1:size(modifyA,1)-2
    for j=1:size(modifyA,2)-2
       window=reshape(modifyA(i+x-1,j+y-1),[],1);
       b(i,j)=min(window);
       c(i,j)=max(window);
    end
end

b=uint8(b);
subplot(2,2,1),imshow(uint8(a));
title('Original image');
subplot(2,2,2),imshow(uint8(b));
title('Minimum filtered');
subplot(2,2,3),imshow(uint8(c));
title('Maximum filtered');