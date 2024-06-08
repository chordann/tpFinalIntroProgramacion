class GrupoObstaculos {
  //VAREABLES
  int grupo = int(random(1, 3.9999));
  int ubicacion;
  Monedas monedaGrupo;//esta moneda se unsa en todas los objetos

  Obstaculo [] llamarObs = new Obstaculo[20];
  int[] obsY = new int [20];

  //CONSTRUCTOR
  GrupoObstaculos() {
    for (int i = 0; i < 20; i++) { 
      llamarObs[i] = new Obstaculo();
      monedaGrupo = new Monedas();
    }
  }

  void llamarGrupo(int ubi, int cualGrupo) {
    if (ubicacion < -200) {
      ubicacion = 1300;
      grupo = int(random(1, 3.9999));
      monedaGrupo.sinRecoger = true;
    } else 
      if (!pausa){
      if(!camaraLenta)ubicacion -= velocidad;// si esta pausado se quedan quietos los objetos
      if(camaraLenta)ubicacion -= velocidad / 1.4;
      }
    if (grupo == 1) obstaculo1(ubicacion);
    if (grupo == 2) obstaculo2(ubicacion);
    if (grupo == 3) obstaculo3(ubicacion);
  }


//____________________________________________________________-
//TIPOS DE OBSTACULO

  void obstaculo1(int ubicacionGrupo) {//obstaculo en en diaginal
    for (int i = 0; i < 15; i++) { 
      llamarObs[i].colisionObstaculo(ubicacionGrupo + i * 10, i * 20, 20, 20);
      llamarObs[i].dibujarObstaculo();
      monedaGrupo.funcionMoneda(ubicacionGrupo, 400, 50);
    }
  }
  
  void obstaculo2(int ubicacionGrupo) {
    llamarObs[1].colisionObstaculo(ubicacionGrupo, 0, 20, 500);
    llamarObs[1].dibujarObstaculo();
    monedaGrupo.funcionMoneda(ubicacionGrupo, 600, 50);
  }
  
  void obstaculo3(int ubicacionGrupo) {
    llamarObs[1].colisionObstaculo(ubicacionGrupo, 220, 20, 500);
    llamarObs[1].dibujarObstaculo();
    monedaGrupo.funcionMoneda(ubicacionGrupo, 150, 50);
  }
}//llave grupos

