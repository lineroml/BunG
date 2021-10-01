PImage volver, muerte, inicio, start, salir, instruc, fondoins, var1, var2, var3, var4, next, volvinicio, choose, dev, confi, manu, ini, ajugar, conti, escoge, principal;
PImage corr1, corr2, corr3, corr4, corr5, corr6, corr7, salto1, salto2, salto3, salto4, botder, botizq, teani, logomio, love, abajo, arriba;
PImage saltacion; 
int numFrames=6;
int filas = 20;
int i;
float vf, s11;
float posf[] =new float[100];
float time[]=new float[100];
int columnas= 20;
float t;
float bs;
float lc = 0, xim = 0;     // ASIGNACION DE VARIBLES UTILIZADAS
float masa = 0;
float cf = 0;
float altf;
double stage;
float gravity=-0.098;
float x=299;
float y=100;
float speed;
float diam=60;
float rect;
float alt = 0;
float tam=3779*alt/1;
int currentFrame=20;
float a;
float yl;
float largo;
String s1, s2, s3, s4;
void setup() {
  size(1280, 720); // TAMAÑO DE PANTALLA / RESOLUCION   
  frameRate(60); // frames por segundo      
  stage = 1; // se inicia en stage = 1, es decir pantalla inicial.
  bs=0.05*width;
  volver=loadImage("image0.jpeg");
  saltacion=loadImage("caida-0peque.png");
  abajo = loadImage("abajo.png"); 
  arriba = loadImage("encima.png"); 
  corr1=loadImage("correr-1.png");
  corr2=loadImage("correr-2.png");
  corr3=loadImage("correr-3.png");
  corr4=loadImage("correr-4.png");
  corr5=loadImage("correr-5.png");
  corr6=loadImage("correr-6.png");
  corr7=loadImage("correr-7.png");
  muerte=loadImage("muerte.jpg");
  start = loadImage("start1.PNG"); 
  teani = loadImage("teanimas.png");
  logomio = loadImage("logomio.png");
  love = loadImage("love.png");
  salir = loadImage("start2.PNG");
  inicio = loadImage("lobby.png");
  instruc = loadImage("instruc.png");
  fondoins = loadImage("inicio.png");
  var1 = loadImage("var1.jpg");
  var2 = loadImage("var2.jpg");
  var3 = loadImage("var3.jpg");
  var4 = loadImage("var4.jpg");
  next = loadImage("next.jpg");
  volvinicio = loadImage("volvinicio.jpg");
  choose = loadImage("phonto.PNG");
  dev = loadImage("dev.JPG");
  confi = loadImage("confi.PNG");
  manu = loadImage("manu.jpg");
  ini = loadImage("ini.jpg");
  ajugar = loadImage("ajugar.jpg");
  conti = loadImage("continuar.jpg");
  escoge = loadImage("escoge.png");
  principal = loadImage("principal.png");
  botder = loadImage("botder.png");
  botizq = loadImage("botizq.png");
}
// SE DIVIDIO EL CODIGO EN DISTINTOS STAGES
// O SECCIONES, PARA DAR UN CORRECTO FUNCIONAMIENTO
// DE CADA UNA DE LOS ELEMENTOS QUE SE QUERIAN
// MOSTRAR EN CADA UNA DE LAS PARTES DEL PROGRAMA
// O DEL JUEGO.

void draw() {
  if (stage==1) {               // STAGE 1 = PANTALLA INICIAL
    xim = xim+1.22222; 
    image(abajo, 0, 0, 1280, 720); 
    image(arriba, xim, 200, 1280, 520); 
    image(arriba, xim-1280, 200, 1280, 520);  
    image(logomio, 90, 200, 522.8848821, 200); 
    image(love, 162.2021947, 390, 378.4804928, 90);
    image(teani, 720, 150, 409.6, 80);
    if (xim >= 1280) {         // ANIMACION DEL FONDO  
      xim = 0;
    } 
    image(start, 795, 300, 255.58, 100); // BOTON DE INICIO  
    image(salir, 797, 420, 252.13, 100); // BOTON DE SALIR  
    image(instruc, 1190, 630, 100, 100); // BOTON DE LIBRO
    
   // SE DEFINIERON LOS HITBOXES DE CADA UNO DE LOS 
   // BOTONES UTILIZANDO CONDICIONALES.
   
   // SE DEFINE HITBOX COMO AREA EN LA QUE EN ESTE
   // CASO SI SE DA CLICK, SE EJECUTA EL BOTON 
   // DADO CADA UNO DE LOS CASOS.
   
    if (mousePressed==true && mouseX<1290 && mouseX>1190 && mouseY<730 && mouseY>630 && stage==1) {
      stage = 2; 
      mousePressed=false;  // BOTON DE LIBRO
    }
    if (mousePressed==true && mouseX<1050.58 && mouseX>795 && mouseY<400 && mouseY>300 && stage==1) {
      stage = 3;
      mousePressed=false;  // BOTON DE IR A JUGAR
    }
    if (mousePressed==true && mouseX<1049.13 && mouseX>797 && mouseY<520 && mouseY>420 && stage==1) {
      exit();              // BOTON DE SALIR
    }
  }                      // STAGE 2 = INSTRUCTIVOS
  if (stage==2) {
    image(fondoins, 0, 0, 1280, 720);
    image(var1, 720, 30, 500, 501);
    image(next, 1120, 550, 100, 50);
    image(ajugar, 720, 550, 100, 50);
    if (mousePressed==true && mouseX<1220 && mouseX>1120 && mouseY<600 && mouseY>550 && stage==2) {
      stage = 2.1; 
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<820 && mouseX>720 && mouseY<600 && mouseY>550 && stage==2) {
      stage = 3; 
      mousePressed=false;
    }
  }
  if (stage==2.1) {    // STAGE 2.1 = INSTRUCTIVO P1
    image(fondoins, 0, 0, 1280, 720);
    image(var2, 720, 30, 500, 501);
    image(next, 1120, 550, 100, 50);
    image(ajugar, 720, 550, 100, 50);
    if (mousePressed==true && mouseX<1220 && mouseX>1120 && mouseY<600 && mouseY>550 && stage==2.1) {
      stage = 2.2; 
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<820 && mouseX>720 && mouseY<600 && mouseY>550 && stage==2.1) {
      stage = 3; 
      mousePressed=false;
    }
  }
  if (stage==2.2) {    // STAGE 2.2 = INSTRUCTIVO P2
    image(fondoins, 0, 0, 1280, 720);
    image(var3, 720, 30, 500, 501);
    image(next, 1120, 550, 100, 50);
    image(ajugar, 720, 550, 100, 50);
    if (mousePressed==true && mouseX<1220 && mouseX>1120 && mouseY<600 && mouseY>550 && stage==2.2) {
      stage = 2.3;
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<820 && mouseX>720 && mouseY<600 && mouseY>550 && stage==2.2) {
      stage = 3; 
      mousePressed=false;
    }
  }
  if (stage==2.3) {       // STAGE 2.3 = INSTRUCTIVO P3
    image(fondoins, 0, 0, 1280, 720);
    image(var4, 720, 30, 500, 501);
    image(volvinicio, 1120, 550, 100, 50);
    image(ajugar, 720, 550, 100, 50);
    if (mousePressed==true && mouseX<1220 && mouseX>1120 && mouseY<600 && mouseY>550 && stage==2.3) {
      stage=1;
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<820 && mouseX>720 && mouseY<600 && mouseY>550 && stage==2.3) {
      stage = 3; 
      mousePressed=false;
    }
  }
  if (stage==3) {       // STAGE 3 = ESCOER PERSONAJE
    image(choose, 0, 0, 1280, 720);  
    image(dev, 900, 610, 246.33, 50);
    if (mousePressed==true && mouseX<1146.33 && mouseX>900 && mouseY<660 && mouseY>610 && stage==3) {
      stage=1;
      mousePressed=false;  // BOTON DE VOLVER A INICIO
    }
    if (mousePressed==true && mouseX<511 && mouseX>371 && mouseY<533 && mouseY>327 && stage==3) {
      stage=4;
      mousePressed=false;  // ICONO DE NANA, TE LLEVA A STAGE 4
    }
  }
// SE HIZO USO DE CAJITAS O FLECHAS PARA
// MODIFICAR / AJUSTAR CADA UNO DE LOS VALORES
  if (stage==4) {         // STAGE 4 = AJUSTE DE VARIABLES
    image(confi, 0, 0, 1280, 720);
    image(ini, 1100, 150, 120, 40);
    image(manu, 1100, 98, 120, 40);
    image(conti, 546.90909, 650, 186.1818182, 40);
    s1 = String.valueOf(lc);     // CONVERSIONES 
    s2 = String.valueOf(masa);
    s3 = String.valueOf(cf);
    s4 = String.valueOf(alt);
    fill(250);
    text(s1, 1053, 495);
    textSize(30);
    text(s2, 395, 495);
    textSize(30);
    text(s3, 395, 548);
    textSize(30);
    text(s4, 1053, 548);
    textSize(30);
    // CAMBIAR LC
    if (mousePressed==true && mouseX<1193 && mouseX>1155 && mouseY<508 && mouseY>470 && stage==4 && lc>0) {
      lc=lc-1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<1234 && mouseX>1196 && mouseY<508 && mouseY>470 && stage==4) {
      lc=lc+1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    // CAMBIAR MASA
    if (mousePressed==true && mouseX<533 && mouseX>495 && mouseY<508 && mouseY>470 && stage==4 && masa>0) {
      masa=masa-1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<574 && mouseX>536 && mouseY<508 && mouseY>470 && stage==4) {
      masa=masa+1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    // CAMBIAR COEF
    if (mousePressed==true && mouseX<533 && mouseX>495 && mouseY<557 && mouseY>519 && stage==4 && cf>0) {
      cf=cf-0.1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<574 && mouseX>536 && mouseY<557 && mouseY>519 && stage==4 && cf<1) {
      cf=cf+0.1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    // CAMBIAR ALTRISC
    if (mousePressed==true && mouseX<1193 && mouseX>1155 && mouseY<557 && mouseY>519 && stage==4 && alt>0) {
      alt=alt-1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<1234 && mouseX>1196 && mouseY<557 && mouseY>519 && stage==4) {
      alt=alt+1;
      text(s1, 1053, 495);
      textSize(30);
      mousePressed=false;
    }
    fill(#030303);
    rect(440, 520, 100, 30);
    image(botizq, 1155, 519, 38, 38); // alt
    image(botder, 1196, 519, 38, 38);
    image(botder, 536, 519, 38, 38); // cf
    image(botizq, 495, 519, 38, 38);
    image(botder, 1196, 470, 38, 38); // lc
    image(botizq, 1155, 470, 38, 38);
    image(botder, 536, 470, 38, 38); // masa
    image(botizq, 495, 470, 38, 38);
    if (mousePressed==true && mouseX<1220 && mouseX>1100 && mouseY<190 && mouseY>150 && stage==4) {
      stage=1;
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<1220 && mouseX>1100 && mouseY<138 && mouseY>98 && stage==4) {
      stage=2;
      mousePressed=false;
    }
    if (mousePressed==true && mouseX<733.0909082 && mouseX>546.90909 && mouseY<690 && mouseY>650 && stage==4) {
      stage=5;
      mousePressed=false;
    }
  }
  if (stage==5) {       // STAGE 5 = ESCOGER MAPA
    image(escoge, 0, 0, 1280, 720);
    if (mousePressed==true && mouseX<697 && mouseX>331 && mouseY<618.15 && mouseY>415 && stage==5) {
      stage=6;
      mousePressed=false;
    }
  }
  if (stage==6) {
    dibujaplano();       // SIMULACION Y GRAFICOS
    image(principal, 0, 0, 1280, 720);
    image(saltacion, 299, 150-y, diam, diam);
    rect(339, 150, 0, -(y));    // PLANTEAMIENO PROBLEMA FISICO
    y=-(y+speed);
    speed=vf;
    speed=speed+gravity;
    t=t+alt/2;
    veloci();
    if (y<tam) {
      speed=speed+(-cf);
    }
    if (y==alt/2) {
      stage=7;
    }
  }
  if (stage==7) {        // AL LLEGAR A LA ALTURA DEL SUELO APARECE LA PANTALLA DE LA MUERTE.
    image(muerte, 0, 0, 1280, 720);
    image(dev, 900, 610, 246.33, 50);
    if (mousePressed==true && mouseX<1146.33 && mouseX>900 && mouseY<660 && mouseY>610 && stage==7) {
      stage=4;
      mousePressed=false;
    }
  }
}
  // USO DE SUBRUTINAS
void altf(){  
  altf=vf-gravity*t/2;
}
void veloci(){
  vf=-t*gravity;
}
void dibujaplano(){
  a=0.83*width;
  yl=0.012*height;
  largo=0.83*width;
  strokeWeight(1);
  rect(a, a, largo, largo);
  for (float i= a; i <=(a+largo); i+=bs) {
    line(i, a, i, a+largo);
    line(a, i, a+largo, i);
  }
} 
//Hola mundo