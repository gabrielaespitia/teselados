int incrementos = 60; // tamaño celda

void setup() {
  size(960, 960);
  background(255);
  noLoop();
}

void draw() {
  for (int y = 0; y < height; y += incrementos) {
    for (int x = 0; x < width; x += incrementos) {

      // Fondo cuadrado pastel claro
    fill(colorPastel());
      noStroke();
      rect(x, y, incrementos, incrementos);

      // Círculo centro
    fill(colorPastel());
      ellipse(x + incrementos/2, y + incrementos/2, 50, 50);

      //  Arco 
    fill(colorPastel());
      arc(x + incrementos/2, y + incrementos/2, 50, 50, 0, PI);
    }
  }
}

//funcion color pastel, para no repetir random en cada una
color colorPastel() {
  float r = random(230, 255);
  float g = random(150, 210);
  float b = random(170, 230);
  return color(r, g, b);
}
