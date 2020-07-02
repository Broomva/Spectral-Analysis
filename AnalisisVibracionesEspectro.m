load Datos.txt
Muestras=Datos(:,1);
x=Datos(:,3);
muestras=0:length(Muestras)-1;
ysinDC=x-mean(x);
subplot(2,1,1)
plot(muestras,ysinDC)
grid on
title('Vibracion');
muestras2=length(Muestras);
espectro=fft(ysinDC,muestras2);
espectro=abs(espectro);
frecuencia=linspace(0,400,muestras2);
subplot(2,1,2)
stem(frecuencia,espectro)
axis([0,200,0,8000])
grid on
title('Espectro');