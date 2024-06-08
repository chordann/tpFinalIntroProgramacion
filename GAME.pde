void setupGame() {
  obstaculos1 = new GrupoObstaculos();
  obstaculos2 = new GrupoObstaculos();
  obstaculos3 = new GrupoObstaculos();
}


void inicioVariableGame() {//para que se reinicie las variable
  if (botonJugar.botonPresionado || botonReintentar.botonPresionado) {//SI TOCA EL BOTON SE REINICIA 
    game.fondoX1 = 0;
    game.fondoX2 = 2000;
    personajeCreado.velY = 0;
    personajeCreado.personajeY = 600;
    velocidad = 7;
    monedasRecogidas = 0;
    pausa = false;
    camaraLenta =false;
    obstaculos1.ubicacion = 1500;
    obstaculos2.ubicacion = 1900;
    obstaculos3.ubicacion = 2300;
    botonJugar.botonPresionado = false;
    botonReintentar.botonPresionado = false; //para que no bogue el contador de monedasmonedas
  }
}

void game() {
  background(#24FFBF);
  game.fondoinfinito();
  obstaculos1.llamarGrupo(1500, 2);
  obstaculos2.llamarGrupo(1900, 3);
  obstaculos3.llamarGrupo(2300, 1);
  personajeCreado.movimientoPersonaje();
  personajeCreado.dibujarPersonaje();
  ContadorMonedasRecogidas();
  funcionPausa();
  // masDificultad() ;
  // ganar(); //falta definir
}

void gameOver() {
  gameOver.fondo();
  textSize(20);
  text("monedasRecogidas", 100, 200);
  text(monedasRecogidas, 300, 200);
  botonInicio.funcionBoton(100, 300, 200, 100);
  botonReintentar.funcionBoton(100, 400, 250, 100);
  inicioVariableGame();
}

void masDificultad() {//falta definir
  if (monedasRecogidas == 1) velocidad = 5;
  if (monedasRecogidas == 2) velocidad = 7;
  if (monedasRecogidas == 3) velocidad = 10;
}


void ganar() {//falta definir
  if (monedasRecogidas >= 4) 
    estado = 5;
}


void winGame() {
  winGame.fondo();
  textSize(20);
  text("monedasRecogidas", 100, 200);
  text(monedasRecogidas, 300, 200);
  botonInicio.funcionBoton(100, 300, 200, 100);
  botonReintentar.funcionBoton(100, 400, 200, 100);
  inicioVariableGame();//cada ves que se toca el boton, se reinician
}

