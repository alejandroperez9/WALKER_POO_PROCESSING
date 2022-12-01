class Walker{                              
  int x, y;                               //PUNTO DE COMIENZO.
 
  Walker(){
    x = width/2;                          //EN EL CENTRO.
    y = height/2;
  }
  
  
  void render(){                          //"FUNCIÓN" - DIBUJA EL OBJETO WALKER.
    stroke(63, 76, 95);                            //COLOR NEGRO.
    point(x, y);                          //DIBUJA UN PUNTO.
  }
  
  
  void step(){                            //"FUNCIÓN" - PASO.
    int choice = int(random(9));          //AÑADO "FUNCIÓN" - "choice".
    if (choice == 0){                     //COMIENZO DE CONDICIONALES.
      x++;
    }else if (choice == 1){
      x--;
    }else if (choice == 2){
      y++;
    }else if (choice == 3){
      y--;
    }
    x = constrain(x, 0, width-1);          //PERMITE QUE NO SE SALGA DE "X".
    y = constrain(y, 0, height-1);         //PERMITE QUE NO SE SALGA DE "Y".
  }
}

Walker w;                                  //CREA LA VARIABLE "W".
Walker w2;
Walker w3;
int c;
int c2;


void setup(){                              //"FUNCIÓN" - INICIO DEL BOCETO.
  size(640, 360);                          //TAMAÑO DEL LIENZO.
  background(255, 255, 255);               //COLOR DEL FONDO.
  frameRate(10000);                        //VELOCIDAD DE EJECUCION
  w = new Walker();                        //CREACCIÓN DEL OBJETO 1.
    w2 = new Walker();                     //CREACCIÓN DEL OBJETO 2
      w3 = new Walker();                   //CREACCIÓN DEL OBJETO 3.
}


void draw(){                               //"FUNCIÓN" - EJECUCIÓN DEL LIENZO DE DIBUJO.
  c=120;
  w.step();                                //INICIO - OBJETO 1.
  w.render();
  
  c2=255;
  w2.step();                             //INICIO - OBJETO 2.
    w2.render();
  
      w3.step();                           //INICIO - OBJETO 3.
      w3.render();
      
     
}
