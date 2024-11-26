/**
 * this program creates a Cube that rotates on the XYZ axes depending on which key is pressed
 * the cube keeps rotating as long as a key is being held. 
 * @author Dino Maksumic
 * @version 1.0 10/28/2024
 */

float angleX = 0;
float angleY = 0;
float angleZ = 0;
boolean rotateXU = false;
boolean rotateXD = false;
boolean rotateYL = false;
boolean rotateYR = false;
boolean rotateZC = false;
boolean rotateZCC = false;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(255);

  //directional light to fully capture the rotations
  directionalLight(255, 0, 0, -1, -1, -1);
  directionalLight(0, 255, 0, 1, 1, 1);

  translate(width/2, height/2);

  // Apply rotations
  if (rotateXU) angleX += 0.05;
  if (rotateXD) angleX -= 0.05;
  if (rotateYL) angleY -= 0.05;
  if (rotateYR) angleY += 0.05;
  if (rotateZC) angleZ += 0.05;
  if (rotateZCC) angleZ -= 0.05;

  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);

  //Draw the cube
  fill(150, 0, 200); // Color of the cube
  box(50);
}

void keyPressed() {
  //Check which key is pressed
  if (keyCode == UP) {
    rotateXU = true;
  } else if (keyCode == DOWN) {
    rotateXD = true;
  } else if (keyCode == LEFT) {
    rotateYL = true;
  } else if (keyCode == RIGHT) {
    rotateYR = true;
  } else if (key == 'c' || key == 'C') {
    rotateZC = true;
  } else if (key == 'r' || key == 'R') {
    rotateZCC = true;
  }
}

void keyReleased() {
  //Check which key is released
  if (keyCode == UP) {
    rotateXU = false;
  } else if (keyCode == DOWN) {
    rotateXD = false;
  } else if (keyCode == LEFT) {
    rotateYL = false;
  } else if (keyCode == RIGHT) {
    rotateYR = false;
  } else if (key == 'c' || key == 'C') {
    rotateZC = false;
  } else if (key == 'r' || key == 'R') {
    rotateZCC = false;
  }
}
