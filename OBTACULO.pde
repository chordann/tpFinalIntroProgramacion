class Obstaculo {
  //VAREABLES
  boolean colision = false;
  int obstaculoAncho, obstaculoAlto;
  int obstaculoX, obstaculoY;
  int terrenoEnFondoX, terrenoEnFondoY;

  //CONSTRUCTOR
  Obstaculo() {
  }

  //FUNCIONES

  void colisionObstaculo(int x, int y, int An, int Al) {
    // AHORA EL MOVIMIENTO DE LOS OBSTACULO DEPENTE DEL GRUPO DE OBSTACULO
    obstaculoX = x;
    obstaculoY = y;
    obstaculoAncho = An;
    obstaculoAlto = Al;
    //colision
    if ((personajeCreado.personajeX + personajeCreado.personajeAncho/2 >= obstaculoX) //por la izquierda
    && (personajeCreado.personajeX - personajeCreado.personajeAncho/2 <= obstaculoX + obstaculoAncho) //por la derecha
    && (personajeCreado.personajeY + personajeCreado.personajeAlto/2 >= obstaculoY) //por arriba
    && (personajeCreado.personajeY - personajeCreado.personajeAlto/2 <= obstaculoY + obstaculoAlto)) { //por abajo
      colision = true;
    } else colision = false;
    if (colision && escudo)

      escudo = false;
    if (colision && !escudo)
      estado = 4;
  }

  void dibujarObstaculo() {
    rectMode(CORNER);
    if (colision)
      fill(0, 200, 0);
    else
      fill(0, 0, 200);
    rect(obstaculoX, obstaculoY, obstaculoAncho, obstaculoAlto);
  }
}//llave obstaculo

