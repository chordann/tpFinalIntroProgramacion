class Monedas {
  boolean sinRecoger = true;
  int monedaX, monedaY;
  int monedaDiam;


  Monedas() {
  }

  void funcionMoneda(int x, int y, int diam) {
    
    monedaX = x;
    monedaY = y;
    monedaDiam = diam;
    if (sinRecoger) {
      dibujarMoneda();
      if ((personajeCreado.personajeX + personajeCreado.personajeAncho/2 >= monedaX - monedaDiam/2) //por la izquierda
      && (personajeCreado.personajeX - personajeCreado.personajeAncho/2 <= monedaX + monedaDiam/2) //por la derecha
      && (personajeCreado.personajeY + personajeCreado.personajeAlto/2 >= monedaY - monedaDiam/2) //por arriba
      && (personajeCreado.personajeY - personajeCreado.personajeAlto/2 <= monedaY + monedaDiam/2)) { //por abajo
        sinRecoger = false;
        monedasRecogidas ++;
      }
    }
  }

  void dibujarMoneda() {
    fill(#F6FF0A);
    ellipse(monedaX, monedaY, monedaDiam, monedaDiam);
  }
}//llave moneda


void ContadorMonedasRecogidas() {
  textSize(30);
  fill(0);
  text("MONEDAS", 1000, 100);
  text(monedasRecogidas, 1150, 100);
}

