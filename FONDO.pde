// ACA SE PONEN LAS IMAGENES
class Fondo {
  //vareable
  // int fondoEstados;
  PImage fondoSelec;
  int fondoX1;
  int fondoX2;
  
  // constructor
  Fondo(PImage fon) {//dentro del constructor devera aver la imagen
    fondoSelec = fon;
  }

  //void

  void fondo() {
    imageMode(CORNER);
    image(fondoSelec, 0, 0);
  }

  void fondoinfinito() {
    if (!camaraLenta) velocidadFondo = int(velocidad/ 1.3);
    if (camaraLenta) velocidadFondo = int(velocidad/ 1.7);

    if (!pausa) {
      fondoX1 -= velocidadFondo;
      fondoX2 -= velocidadFondo;
    }

    if (fondoX1 < -2100) fondoX1 = fondoX2 + 2000;
    if (fondoX2 < -2100) fondoX2 = fondoX1 + 2000 ;
    imageMode(CORNER);
    image(fondoSelec, fondoX1, 0);
    image(fondoSelec, fondoX2, 0);
    // imagen1(fondoX1);
    //imagen2(fondoX2);
  }
}//llave fondo

