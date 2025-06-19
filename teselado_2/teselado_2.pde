int incrementos = 60;

void setup() {
  size( 1000, 1000);
  background(255);
  noLoop();
}

void draw() {
  for (int y = 0; y <= height; y += incrementos) {
    for (int x = 0; x <= width; x += incrementos) {
    
   
     fill(255, 253, 186); // amarillo pastel
      noStroke();
      ellipse(x, y, 50, 50); // círculo en cada celda
      fill(173, 216, 230);  
      rect(x, y, 60, 60);
      
      float r, g, b;

if (random(1) < 0.6) {
  // Naranja intenso pastel
  r = random(245, 255);   // rojo alto
  g = random(170, 200);   // verde medio
  b = random(120, 150);    // azul bajo 
} else {
  // Rosado intenso pastel
  r = random(240, 255);   // rojo alto
  g = random(170, 200);   // verde bajo-medio 
  b = random(190, 240);   // azul alto 
}
fill(r, g, b);
      float arcoX = x + incrementos / 2;
      float arcoY = y + incrementos / 2-10;
      arc(arcoX, arcoY, 55, 55, 0, PI); 
      
      
    }
  }
}
