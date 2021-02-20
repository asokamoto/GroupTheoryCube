import peasy.*;
float speed = 0.035;
int count = 0;

ArrayList<Move> list;
ArrayList<Move> listTemp = new ArrayList<Move>();

Move idenMove;
ArrayList<Move> identityAL = new ArrayList<Move>();

Move assocMove;
ArrayList<Move> associateALf = new ArrayList<Move>();

Move move;
ArrayList<Move> regsAL = new ArrayList<Move>();

Move ordMove;
ArrayList<Move> orderAL= new ArrayList<Move>();

Move invMove;
ArrayList<Move> invAL1 = new ArrayList<Move>();

ArrayList<Move> invAL2 = new ArrayList<Move>();

ArrayList<Move> invAL3 = new ArrayList<Move>();

ArrayList<Move> invAL4 = new ArrayList<Move>();

boolean started = false;
PeasyCam cam;

int dim = 3;

int ex = 100;
int why = 50;
int w = 150;
int h = 80;
Move[] allMoves = new Move[]
{
  new Move(0, 1, 0, 1),
      new Move(0, 1, 0, -1),
      new Move(0, -1, 0, 1),
      new Move(0, -1, 0, -1),
      new Move(1, 0, 0, 1),
      new Move(1, 0, 0, -1),
      new Move(-1, 0, 0, 1),
      new Move(-1, 0, 0, -1),
      new Move(0, 0, 1, 1),
      new Move(0, 0, 1, -1),
      new Move(0, 0, -1, 1),
      new Move(0, 0, -1, -1)
};


Cubie[] cube = new Cubie[dim*dim*dim];


void setup() {
  frameRate(60);
  //fullScreen(P3D);
  size(1000, 1000, P3D);
  cam = new PeasyCam(this, 900);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);

  cam.setWheelHandler(null);

  int index = 0;
  for(int x = -1; x <= 1; x++)
  {
    for(int y = -1; y <= 1; y++)
    {
      for(int z = -1; z <= 1; z++)
      {
        PMatrix3D single = new PMatrix3D();
        single.translate(x,y,z);
        cube[index] = new Cubie(single, x, y, z);
        index++;
      }
    }
  }
  count = 0;
  move = allMoves[8];
  assocSetup();
  idenSetup();
  orderSetup();
  invSetup1();
  invSetup2();
  invSetup3();
  invSetup4();
  list = listTemp;
}



void resetCube()
{
  int index = 0;
  for(int x = -1; x <= 1; x++)
  {
    for(int y = -1; y <= 1; y++)
    {
      for(int z = -1; z <= 1; z++)
      {
        PMatrix3D single = new PMatrix3D();
        single.translate(x,y,z);
        cube[index] = new Cubie(single, x, y, z);
        index++;
      }
    }
  }
  idenSetup();
  assocSetup();
  orderSetup();
  invSetup1();
  invSetup2();
  invSetup3();
  invSetup4();

}
void reset2(){
  int index = 0;
  for(int x = -1; x <= 1; x++)
  {
    for(int y = -1; y<=1; y++)
    {
      for(int z = -1; z <= 1; z++)
      {
        PMatrix3D single = new PMatrix3D();
        single.translate(x, y, z);
        cube[index] = new Cubie(single, x, y, z);
        index++;
      }
    }
  }

}

void invSetup1(){
  invAL1.clear();

  int[] tempList = {4, 2};
  for(int i = 0; i < 2; i++)
  {
    Move temp = allMoves[tempList[i]];
    invAL1.add(temp);
  }

}

void invSetup2(){
  invAL2.clear();
  int[] tempList2 = {3, 5};
  for(int j = 1; j >= 0; j--)
  {
    Move temp = allMoves[tempList2[j]];
    invAL2.add(temp);
  }
}


void invSetup3(){
  invAL3.clear();
  int[] tempList = {4, 2};
  for(int i = 0; i < 2; i++)
  {
    Move temp = allMoves[tempList[i]];
    invAL3.add(temp);
  }
}

void invSetup4(){
  invAL4.clear();
  int[] tempList = {3, 5};
  for(int j = 0; j < 2; j++)
  {
    Move temp = allMoves[tempList[j]];
    invAL4.add(temp);
  }

}

void orderSetup(){
  orderAL.clear();
  int []tempList = {4, 2, 5, 3};
  for(int i = 0; i < 4; i++)
  {
    Move temp = allMoves[tempList[i]];
    orderAL.add(temp);
  }

}

void idenSetup() {

  identityAL.clear();
  int idenR = int(random(allMoves.length));
  //println("idenR: " + idenR);
  Move temp = allMoves[idenR];
  for(int i = 0; i < 4; i++)
  {
    identityAL.add(temp);
  }

}

void assocSetup()
{
  associateALf.clear();
  int []tempList = {4, 2,5};
  for(int i = 0; i < 3; i++)
  {
    Move temp = allMoves[tempList[i]];
    associateALf.add(temp);
  }
}

void draw(){
  background(50);
  move.update();

  rotateX(-0.35);
  rotateY(-0.4);
  rotateZ(0.1);
  if (move.finished()) 
  {
    if (count < list.size()-1) 
    {
      count++;
      move = list.get(count);
      move.start();
    }
  }

  scale(60);
  for(int i = 0; i < cube.length; i++)
  {
    push();
    if(abs(cube[i].z) > 0 && cube[i].z == move.z)
    {
      rotateZ(move.angle);
    } 
    else if(abs(cube[i].x) > 0 && cube[i].x == move.x)
    {
      rotateX(move.angle);
    }
    else if(abs(cube[i].y) > 0 && cube[i].y == move.y)
    {
      rotateY(-move.angle);
    }
    cube[i].show();
    pop();
  }
}
