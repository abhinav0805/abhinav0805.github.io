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
    img = getsnapshot(im);
    fname = ('Image');
    imwrite(img,fname,'jpg');
    break
end
end
imresize(img,200*200);

fclose(arduino);




