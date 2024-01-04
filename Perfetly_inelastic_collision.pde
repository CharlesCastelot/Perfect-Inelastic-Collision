//initial possition of the retangles
float Initial1 = 200;
float Initial2 = 500;

//Masses (Kg)
float M1 = 40;
float M2 = 60;

//Velocities (m/s)
float V1i = 9;
float V2i = 0;

float Vf = (M1*V1i)/(M1+M2);

void setup(){
  size(1100,600);
}

void draw(){
  background(10);
  
  //Object 1 (on the left)
  strokeWeight(2);
  stroke(250, 100, 300);
  Initial1 += V1i;
  rect(Initial1,300,-150,-100);
  
  
  //obeject 2 (on the right)
  strokeWeight(2);
  stroke(250, 200, 100);
  Initial2 += V2i;
  rect(Initial2,200,150,100);
  
  if (Initial1 >= Initial2){
    V1i=Vf;
    V2i=Vf;
    
  }
  if (Initial1 >= 910){
    V1i=0;
    V2i=0;
  }
  
}
