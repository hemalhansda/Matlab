p = imread('C:\Users\Hemal\Pictures\Picasa\Exports\Pictures\abc.jpg');
r=double(p);
b=rgb2gray(r);
[row,col]=size(b);
c1=zeros(row,1);
imr1 =[c1;b;c1];
r1=zeros(1,col+2);
imr = [r1;imr1;r1];
imr=double(imr);
[r,c]=size(imr);
imr3=zeros(r,c);
imr4=zeros(r,c);

for i=2:r-1
    for j=2:c-1
       M =imr(i-1:i+1,j-1:j+1);
       imr3(i,j)=max(M(:));
       imr4(i,j)=min(M(:));
    end
end

imtool(uint8(imr3));
imtool(uint8(imr4));