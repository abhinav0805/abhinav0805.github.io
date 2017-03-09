clear all
clc
arduino=serial('COM7','BaudRate',9600);
fopen(arduino);
y=fscanf(arduino,'%d');

im = videoinput('winvideo',1);
while 1
if y==0
    continue
else
    im = getsnapshot(img);
    fname = ('Image');
    imwrite(im,fname,'jpg');
    break
end
end

fclose(arduino);

pr=0;
pg=0;
pb=0;

%getting components of red, green and blue from the image
r = im(:,:,1);
g = im(:,:,2);
b = im(:,:,3);
%getting size of the matrices of image
[r1 , c1] = size(r);
tot = r1*c1; %total pixels 
%checking number of pixels of green in the threshold range 
for i = 1:r1
    for j = 1:c1
        if (im(i , j,1) >= 0) && (im(i,j,1) <= 173) && (im(i,j,2) >= 102) && (im(i,j,2) <= 255) && (im(i,j,3) >= 0) && (im(i,j,3) <= 173) 
           pg = pg+1;
       % else
        %    im(i,j,1)=0;
         %   im(i,j,2)=0;
         %   im(i,j,3)=0;
        end
     end
end
%checking number of pixels of blue in the threshold range
for i = 1:r1
    for j = 1:c1
        if (im(i , j,1) >= 0) && (im(i,j,1) <= 90) && (im(i,j,2) >= 0) && (im(i,j,2) <= 90) && (im(i,j,3) >= 102) && (im(i,j,3) <= 255) 
            pb = pb+1;
        end
     end
end
%checking number of pixels of red in the threshold range
for i = 1:r1
    for j = 1:c1
        if (im(i , j,1) >= 164) && (im(i,j,1) <= 255) && (im(i,j,2) >= 0) && (im(i,j,2) <= 194) && (im(i,j,3) >= 0) && (im(i,j,3) <= 194) 
            pr = pr+1;
 
        end
     end
end
subplot(1,2,1)
imshow(im1)
subplot(1,2,2)
imshow(im)
%percent of pixels of red, blue and green
per_red = (pr*100)/tot;
per_green = (pg*100)/tot;
per_blue = (pb*100)/tot;
if per_red>5
    fprintf('amount of red is');
    disp(per_red);
end
if per_green>5
    fprintf('amount of green is');
    disp(per_green);
end
if per_blue>5
    fprintf('amount of blue is');
    disp(per_blue);
end
