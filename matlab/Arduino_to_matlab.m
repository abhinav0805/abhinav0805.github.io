clear all
clc
 
arduino=serial('COM7','BaudRate',9600);
 
fopen(arduino);
 
x=linspace(1,100);
   
for i=1:length(x)
	y(i)=fscanf(arduino,'%d');
end
	
fclose(arduino);
disp('making plot..')
plot(x,y);