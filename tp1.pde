boolean botonI = false;
PImage newyork;
PImage titulo;
PImage konami;
PFont tipografia;
int numImage=1;
int totalImage = 3;
int ejeY;
float ejeYboton=550;
float ejeY2boton=750;
float subirboton=2;
float alpha=0;
void setup() {
createFont("tipografia.vlw",20);
size(600, 600);
tipografia = loadFont ("tipografia.vlw");
newyork=loadImage("newyork.jpg");
titulo=loadImage("titulo.jpg");
konami=loadImage("konami.png");}
void draw(){
float desaparecer=20;  
background(0);
image(newyork,0,0,600,600);
image(konami,170,ejeY2boton+700,300,300);
image(titulo,170,ejeY2boton+1300,300,300);
fill(33,237,24,alpha);
textSize(25);
text("Insert Coin",260,ejeYboton,60);
textFont(tipografia);
if (botonI){ 
alpha=alpha-desaparecer;  
ejeYboton=ejeYboton - subirboton;
} else {alpha=255;}
if(botonI){ejeY2boton=ejeY2boton-subirboton;
}if(ejeYboton>=-10);{
fill(255);
textSize(20);
text("Creador",10,ejeY2boton,11);
text("Musica",500,ejeY2boton+311);
text("Distribuidora",260,ejeY2boton+630,20);
textSize(50);
text("Peter Laird",10,ejeY2boton+50,15);
text("Kevin Eastman",10,ejeY2boton+100,15);
text("Mutsuhiko Izumi",150,ejeY2boton+370,15);
text("Miki Higashino",200,ejeY2boton+440,15);
}
}
void mousePressed(){
if ((mouseX > 250) && (mouseX < 250+150) && (mouseY > 500) && (mouseY < 500+100)) {
botonI = true;
}else{
botonI = false;
}
}
