im = videoinput('winvideo',1);
img = getsnapshot(im);

fname = ('Image');
imwrite(img,fname,'jpg');

