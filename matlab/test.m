im = imread('C:\Users\Abhinav Ghai\Desktop\Image.jpg');
imshow(im);
%figure;
%im2 = imresize(im , [1024 768]);
%imshow(im2);
%figure;
%r = im(:,:,1);
%g = im(:,:,2);
%b = im(:,:,3);
%if((0 <= r && r <= 173) && (102 <= g && g <=255) && (0 <= b && b <=173))
 %   fprintf('red is the color');
%end

    
%im1 = rgb2gray(im);
%t = graythresh(im1);

%diff = imsubtract(r,im1);
%imshow(diff);
%figure;
%bw = im2bw(diff,t);
%imshow(bw);
%figure;
%area = bwareaopen(bw,300);

%rm = immultiply(area,r);
%gm = g .*0;
%bm = b .*0;
%image = cat(3,rm,gm,bm);
%imshow(image);