float x;
float y;
float lontananza;
float r;
int line;
float distanza;
float array[][];
int n = 560;


void setup(){
background(0);
size(600,900);
array = new float[n][2];
}
void draw(){
  noLoop();
  x=random(width);
  y=random(height);
  for(int i=0; i<n; i++){
    //array per memorizzare le coordinate di tutti i pallini
    array[i][0] = x;
    array[i][1] = y;
    
    for(int j = 0; j<n; j++) {
      distanza=sqrt(sq(x-array[j][0]) + sq(y-array[j][1]));
      if(distanza<=35){
        stroke(255,0,0);
        line(x,y,array[j][0], array[j][1]);
      }
    }

    x = random(width);
    y = random(height);
  }
  for(int i=0; i<n; i++){
    r=random(2,6);
    fill(255); 
    noStroke();
    ellipse(array[i][0],array[i][1],r,r);
   
    
  
  }
}; 
