//MAQUINA DE ESTADOS
int estado = 0;
/*
 0 = inicio
 1 = controles
 2 = historia
 3 = se esta jugando 
 4 = game over
 5 = gamer Win
 */

int velocidad;
int velocidadFondo;// afecta a todos los items (monedas, obstaculo)
int monedasRecogidas;//contador de monedas
boolean pausa = false;
boolean camaraLenta = false;
boolean escudo = false;
//int fondoX1;
//int fondoX2;


//DECLARACION CLASES
Personaje personajeCreado;

//elemento Game
GrupoObstaculos obstaculos1;
GrupoObstaculos obstaculos2;
GrupoObstaculos obstaculos3;
//BOTONES
Boton botonInicio;
Boton botonControles;
Boton botonHistoria;
Boton botonJugar;
Boton botonReintentar;
//IMAGENES
PImage skinPersonaje,skinPersonajeJetON;
PImage imgInicio, imgHistoria, imgControles, imgEstrellas, imgGameOver, imgWinGame;
//fondos
Fondo inicio, historia, controles, game, gameOver, winGame;




void setup() {
  size(1280, 720);//HD
  //botones
  botonInicio = new Boton("INICIO", 0);
  botonControles = new Boton("CONTROLES", 1);
  botonHistoria = new Boton("HISTORIA", 2);
  botonJugar = new Boton("JUGAR", 3);
  botonReintentar = new Boton("reintentar", 3);

  personajeCreado = new Personaje(200, 200, 60, 100);
  setupGame();
  //imagenes
  skinPersonaje = loadImage("personaje.png");
  skinPersonajeJetON = loadImage("personaje jet ON.png");
  imgInicio = loadImage("inicio.png");
  imgHistoria = loadImage("historia.png");
  imgControles = loadImage("controles.png");
  imgEstrellas = loadImage("Pizarron.png");
  imgEstrellas.resize(2000, 720);
  imgGameOver = loadImage("game over.png");
  imgWinGame = loadImage("win.png");
  //fondos
  inicio = new Fondo(imgInicio);
  historia = new Fondo(imgHistoria);
  controles = new Fondo(imgControles);
  game = new Fondo(imgEstrellas); 
  gameOver = new Fondo(imgGameOver); 
  winGame = new Fondo(imgWinGame);
}//llave setup



void draw() {
  if (estado == 0) {//ESTADO 0 / INICIO
    inicio ();
  }
  if (estado == 1) {//ESTADO 1 // controles
    controles ();
  }
  if (estado == 2) {//ESTADO 2 // historia
    historia ();
  }
  if (estado == 3) {//el juego  se esta ejecutando
    game();
  }
  if (estado == 4) {// pantalla game over
    gameOver();
  }
  if (estado == 5) {//win/ puntaje en pantalla
    winGame();
  }
  println(personajeCreado.personajeY);
}//llave draw


void keyPressed() {
  if (keyCode == UP) personajeCreado.salto = true;
  if (keyCode == ENTER) pausa = !pausa;
  if (key == 'l' || key == 'L') camaraLenta = true;
  if (key == 'e' || key == 'E') escudo = true;
}
void keyReleased() {
  if (keyCode == UP) personajeCreado.salto = false;
  if (keyCode == ENTER) pausa = pausa;
  if (key == 'l' || key == 'L') camaraLenta = false;
}


//__________________________________________________________________________________________

