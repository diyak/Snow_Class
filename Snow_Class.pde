class Snow {
  PVector loc;
  PVector vel;
  PImage snow;
  float scaleFactor = 0.05;

  Snow() {
    loc = new PVector(random(-100, width+100), random(-500,-100));
    vel = new PVector(0, 1);
    snow = loadImage("Snowflake.png");
  }

  void display() {
    imageMode(CENTER);
    tint(360,random(50,200));
    image(snow, loc.x, loc.y,snow.width*scaleFactor,snow.height*scaleFactor);
  }
  void drop() {
    loc.add(vel);
    if(loc.y>height){
      loc.y=0;
    }
  }
}

