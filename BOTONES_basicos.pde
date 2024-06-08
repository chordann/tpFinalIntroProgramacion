class Boton {
  boolean  colisionBoton;
  boolean botonPresionado = false;
  int anchoBoton, altoBoton;
  int botonX, botonY;
  String texto;
  int cambiarEstado;

  //CONSTRUCTOR
  // texto dentro del boto/ cual estado cambia
  Boton(String palabra, int cualEstado) {
    texto = palabra;
    cambiarEstado = cualEstado;
  }


  //FUNCIONES
  //(posX/ posY/ ancho del boto/ alto del boton/
  void funcionBoton(int x, int y, int ancho, int alto) {//la colicion del boton
    anchoBoton = ancho;
    altoBoton = alto;
    botonX = x;
    botonY = y; 

    if (mouseX > botonX  && mouseX < botonX + anchoBoton && mouseY >  botonY &&  mouseY < botonY + altoBoton)//si el mouse esta ensima
      colisionBoton = true;
    else
      colisionBoton = false;

    if (mousePressed && colisionBoton) //click para cambiar de estado 
      botonPresionado = true;
    else  botonPresionado = false;



    if (botonPresionado) {//click para cambiar de estado 
      estado = cambiarEstado;
    }
    dibujarBoton();//la funcion dibujar boton esta dentro de funcionBoton
  }

  void dibujarBoton () {//dibjar el boton
    rectMode(CORNER);
    fill(0, 150, 0);
    rect(botonX, botonY, anchoBoton, altoBoton);//borde verde
    fill(150);
    rect(botonX + 10, botonY + 10, anchoBoton -20, altoBoton - 20);//parte gris
    fill(0);
    textSize(30);
    text(texto, botonX + 30, botonY + 60);// el texto, QUE CMBIA POR LA VAREABLE texto de tipo String
    if (colisionBoton) { //blanquea al boton
      fill(255, 100);//color blanco con 100 de transparencia
      rect(botonX, botonY, anchoBoton, altoBoton);
    }
  }
}//llave botones

