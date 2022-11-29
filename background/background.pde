//Fontes:
//  http://learningprocessing.com/examples/chp16/example-16-06-Grid (grade)
//  https://jnystad.no/post/high-resolution-rendering-with-processing-part-1
//  https://sighack.com/post/exporting-high-resolution-images-in-processing 
//  https://www.pdfconvertonline.com/ 


import processing.pdf.*;


int videoScale = 15;
int videoScale2 = 12;

int cols, rows;


void setup() {
  
  size(1920, 1080);
  beginRecord(PDF, "frame-####.pdf");  
  
  background(161, 195, 73);




  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;

}

void draw() {

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a rectangle at (x,y)
      int x = i*videoScale;
      int y = j*videoScale;
      fill(135, 163, 48);
      //stroke(244, 157, 110);
      stroke(161, 195, 73);

      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      //randomSeed(5);
      rect(x + ( random(1, 5)), y + (random (1,5)), videoScale, videoScale);
    }
  }

endRecord();
    exit();

}
