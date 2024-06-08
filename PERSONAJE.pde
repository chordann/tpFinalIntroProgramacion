class Personaje {
  int personajeX, personajeY, personajeAlto, personajeAncho;
  float velY;
  float aceleracionY;
  float gravedad;
  boolean salto= false;

  Personaje(int x, int y, int an, int al) {//proporciones personaje
    personajeX = x;
    personajeY = y ;
    personajeAncho = an;
    personajeAlto = al;
  }

  void dibujarPersonaje() {
    rectMode(CENTER);
    fill(#D01CFA, 150);
    if (escudo)rect( personajeX, personajeY, personajeAncho +15, personajeAlto + 15);
    imageMode(CENTER);
    skinPersonaje.resize(personajeAncho, personajeAlto);
    skinPersonajeJetON.resize(personajeAncho, personajeAlto);//CAMBIA EL TAMANO DE LA IMAGEN
    if (salto) image(skinPersonajeJetON, personajeX, personajeY);
    else image(skinPersonaje, personajeX, personajeY);


    fill(220, 0, 0, 10);
   // rect(personajeX, personajeY, personajeAncho, personajeAlto);
  }

  void movimientoPersonaje() {
    if (!pausa) {// si esta pausado se quedan quietos los objetos
      if (!camaraLenta)personajeY += velY; 
      if (camaraLenta)personajeY += velY / 1.4;//que el personaje sea afectado por la gravedad (cuando velY es positivo) y por el salto (cuando velY es negativo)
    }
    personajeY = constrain(personajeY, personajeAlto/2, height-personajeAlto/2); //limite con los bordes

    if (velY > 0 && personajeY >= height-personajeAlto/2)//que cuando el personaje esta "en el piso" la gravedad/velY sea nula
      velY = 0;

    if (velY < 15) velY += 1;//limites gravedad
    if (velY < -10 ) velY += 1; //limites salto


    if (salto) { // cuando se precion "UP" el personaje comience a subir
      velY -= 2.5;
    }

    if (personajeY <= personajeAlto/2) { //limite con el techo
      velY = 0;
      if (!camaraLenta) velY += 1;
      if (camaraLenta) velY += 1.4;//1.4 por la camara lenta
    }
  }
}

