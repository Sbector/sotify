import processing.video.*;

Movie Dolce;

void setup() {
  size(640, 360);
  background(0);
  Dolce = new Movie(this, "prison_images.mp4");
  Dolce.play();
}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  int w = Dolce.width;
  int h = Dolce.height;
  if (w != 0) {
    copy(Dolce, w/2, 0, 1, h, 0, 0, w, h);
  }
  saveFrame("output/Dolce_#####.png");
  //println(Dolce.time());
  //if (Dolce.time() >= Dolce.duration()) {
  //  exit();
  //  println("end");
  //}
}
