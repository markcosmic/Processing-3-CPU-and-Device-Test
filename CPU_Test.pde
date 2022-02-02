boolean start = false;
boolean test;
int startMills, results;
void setup(){
  //comment out the next two lines for Android Mode
  surface.setLocation(displayWidth - int(width + width/20), 0); 
  size(800,400);
  textAlign(CENTER,CENTER);
  textSize(width / 13);
}

void draw(){
  background(0);
  fill(200);
  if(test){
    startMills = millis();
    for(int i = 0; i < 2500000; i++){
      results = millis() - startMills;
    }
    test = false;
  }
  if(start){
    String res = nfs(results * 0.001,0,4);
    text("Scored: " + results + "\n" + res + " seconds\n\nTap to Quit", width/2, height/2);
  }else{
    text("Tap to start", width/2, height/2);
  }
}
void mousePressed(){
  if(!start && !test){
    start = test = true;
    return;
  }
  exit();
}
