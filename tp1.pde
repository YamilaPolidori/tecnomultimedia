import processing.sound.*;
SoundFile kittysonido;

PImage friends, kittyy, mymelody, kuromi, kekeroppi, pompurin, kittyfoto1, kittyfoto2, kittyfoto3, kittyfoto4, kittyfoto5;
PFont hellokittyfont;
float y;
int kitty;

void setup () {
  size (400, 400);
  kittysonido = new SoundFile (this, "kitymusic11.wav");
  background (0);
  friends = loadImage ("friends.jpg");
  kittyy = loadImage ("kittyy.png");
  kittyy.resize(70, 70);
  mymelody = loadImage ("mymelody.png");
  mymelody.resize(80, 80);
  kuromi = loadImage ("kuromi.png");
  kuromi.resize (80, 80);
  kekeroppi = loadImage ("kekeroppi.png");
  pompurin = loadImage ("pompurin.png");
  hellokittyfont = loadFont ("hellokittyfont.vlw");
  kittyfoto1 = loadImage ("kittyfoto1.jpg");
  kittyfoto2 = loadImage ("kittyfoto2.jpg");
  kittyfoto3 = loadImage ("kittyfoto3.jpg");
  kittyfoto4 = loadImage ("kittyimagen4.jpg");
  kittyfoto5 = loadImage ("kittyimagen5.jpg");
}

void draw () {  //titulo
  kitty = frameCount;
  if (frameCount > 0 && frameCount < 400) {

    image (friends, 0, 0, 400, 400);
  }


  textFont (hellokittyfont, 24);
  fill (336, 27, 99);
  image (kittyy, kitty, 80);
  text ("Hello Kitty Paradise", kitty, 180);

  fill ( 0);

  if (frameCount > 500 && frameCount < 800) {
    image (kittyfoto1, 0, 0);

    image (mymelody, 30, 60);

    text ("Producido por:", 80, 200);
  }
  if (frameCount > 500 && frameCount < 800) {

    text ("Sanrio Co.", 80, 230);
  }

  if (frameCount > 800 && frameCount < 1000) {
    image (kittyfoto2, 0, 0);

    image (kuromi, 30, 60);
    text ("Distribuido por:", 80, 200);
  }
  if (frameCount > 800 && frameCount < 1000) {
    text ("Enoki Films USA", 80, 230);
  }

  if (frameCount > 1000 && frameCount < 1200) {
    fill (255, mouseX, mouseY);
    image (kittyfoto3, 0, 0);

    text ("Personajes:", 80, 140);
  }
  if (frameCount > 1000 && frameCount < 1200) {
    text ("Hello Kitty, Mimmy", 80, 170);
  }
  if (frameCount > 1000 && frameCount < 1200) {
    text ("My Melody, Kuromi", 80, 200);
  }
  if (frameCount > 1000 && frameCount < 1200) {
    text ("Kekeroppi, Cinnamoroll", 80, 230);
  }
  if (frameCount > 1000 && frameCount < 1200) {
    text ("Pompurin, BadtzMaru", 80, 260);
  }
  if (frameCount > 1200 && frameCount < 1400) {

    image (kittyfoto4, 0, 0);

    text ("Musica:", 80, 140);
  }
  if (frameCount > 1200 && frameCount < 1400) {
    text ("Mark LunoQuist", 80, 170);
  }
  if (frameCount > 1200 && frameCount < 1400) {
    text ("Jeremy Sweet", 80, 200);
  }
  if (frameCount > 1200 && frameCount < 1400) {
    text ("Ian Christian Nickus", 80, 230);
  }
  if (frameCount > 1400 && frameCount < 1600) {
    image (kittyfoto5, 0, 0);

    text ("Efectos:", 80, 140);
  }
  if (frameCount > 1400 && frameCount < 1600) {
    fill (255, mouseX, mouseY);

    text ("Johanna Rowe", 80, 170);
  }
  if (frameCount > 1400 && frameCount < 1600) {
    fill (255, mouseX, mouseY);

    text ("Annie Baker", 80, 200);
  }




  if (frameCount > 1700 ) {
    image (kittyfoto1, 0, 0);

    fill (0, mouseX, mouseY);

    text ("PRESIONA \nENTER PARA REINICIAR", 40, 200);
  }


  println (kitty);
}

void keyPressed () {
  if (key==ENTER)
  kittysonido.play();
    frameCount = 0;
}
