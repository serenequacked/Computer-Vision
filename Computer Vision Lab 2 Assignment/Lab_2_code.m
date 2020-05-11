%3(a)
Pc = imread('maccropped.jpg');
P = rgb2gray(Pc);
imshow(P)

%3(b)
Sx = [
[-1,0,1];
[-2,0,2];
[-1,0,1];];

Sy = [
[-1,-2,-1];
[0,0,0];
[1,2,1];];

PSx = conv2(P,Sx);
PSy = conv2(P,Sy);
imshow(uint8(PSx));
imshow(uint8(PSy));

%3(c)
PS = (PSx.^2)+(PSy.^2);
imshow(uint8(PS));
imshow(uint8(sqrt(PS)));

%3(d)
E = PS; 
max(E(:));
min(E(:));
median(E(:));
mean(E(:));

t = [3000,10000,50000,100000]
Et = E>t(1);
imshow(Et);
Et = E>t(2);
imshow(Et);
Et = E>t(3);
imshow(Et);
Et = E>t(4);
imshow(Et);

%3(e)(i)
I = P;
tl = 0.04;
th = 0.1;
E = edge(I,'canny',[tl th],1);
imshow(E);
E = edge(I,'canny',[tl th],2);
imshow(E);
E = edge(I,'canny',[tl th],3);
imshow(E);
E = edge(I,'canny',[tl th],4);
imshow(E);
E = edge(I,'canny',[tl th],5);
imshow(E);

%3(e)(ii)
sigma = 1
E = edge(I,'canny',[0.01 th],sigma);
imshow(E);

E = edge(I,'canny', [0.09 th],sigma);
imshow(E);


%3.2(a)
P = imread('maccropped.jpg');
I = rgb2gray(P);
tl = 0.04; th = 0.1; sigma = 1.0;
E = edge(I,'canny',[tl th],sigma);
imshow(E);

%3.2(b)
[H, xp] = radon(E); 
imshow(H);

%3.2(c)
imagesc(uint8(H));

%3.2(d) 
theta = 103;
radius = xp(157);
[A, B] = pol2cart(theta*pi/180, radius);
B = -B;

C = A*(A+179) + B*(B+145);
whos E;
%center of image is (145,179)

%3.2(e)
xl = 0;
yl = (C - A * xl) / B;
xr = 357;
yr = (C - A * xr) / B;


%3.2(f)
imshow(I)
line([xl xr], [yl yr])

%3.3(a)

%3.3(b)
P1 = imread('corridorl.jpg'); 
P1 = rgb2gray(P1);
imshow(P1);
P2 = imread('corridorr.jpg');
P2 = rgb2gray(P2);
imshow(P2);

%3.3(c)
D = dmap(P1, P2, 11, 11);
imshow(D,[-15 15]);
I = imread('corridor_disp.jpg');
imshow(I);

%3.3(d)
P3 = imread('triclopsi2l.jpg'); 
P3 = rgb2gray(P3);
imshow(P3);
P4= imread('triclopsi2r.jpg');
P4= rgb2gray(P4);
imshow(P4);

D = dmap(P3, P4, 11, 11);
imshow(D,[-15 15]);
I = imread('triclopsid.jpg');
imshow(I);




