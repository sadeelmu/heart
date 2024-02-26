// b<3millah

ArrayList<PVector> heart = new ArrayList<PVector>();
float a = 0;

void setup(){
 size(400,400); 
}

void draw(){
  background(0);
  translate(width/2, height/2);
  
  fill(128, 0, 0);
  strokeWeight(2);
  stroke(255);
  beginShape();
  
  for(PVector v : heart){
    vertex(v.x,v.y);
  }
  endShape();
  
    float radius = 10;
    float x = radius * 16 * pow(sin(a), 3);
    float y = -radius * (13 * cos(a) - 5*cos(2*a) - 2*cos(3*a) - cos(4*a));
    heart.add(new PVector(x,y));
    a += 0.01;
}
