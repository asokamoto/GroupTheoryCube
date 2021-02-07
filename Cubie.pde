class Cubie{
  PMatrix3D matrix;
  float len;
  boolean highlight = false;
  int x, y, z, numFaces = 0;
  color c;
  Face[] faces= new Face[6];

    
  Cubie(PMatrix3D m, int x, int y, int z)
  {
   this.matrix = m;
   this.x = x;
   this.y = y;
   this.z = z;
   c = #FFFFFF;
   
   faces[0] = new Face(new PVector(0, 0 , 1), #FF5050/*red*/);
   faces[1] = new Face(new PVector(0, 0 , -1), #FF9E00/*orange*/);
   faces[2] = new Face(new PVector(0, -1 , 0), #FFFFFF/*white*/);
   faces[3] = new Face(new PVector(0, 1 , 0), #FFFB00/*yellow*/);
   faces[4] = new Face(new PVector(1, 0 , 0), #0064FF/*blue*/);
   faces[5] = new Face(new PVector(-1, 0 , 0), #72FF50/*green*/);
   

  }
  
  void turnFacesZ(int dir)
  {
    for(Face f: faces)
    {
      f.turnZ(dir*HALF_PI);
    }
  }
  
  void turnFacesX(int dir)
  {
    for(Face f: faces)
    {
      f.turnX(dir*HALF_PI);
    }
  }
  
  void turnFacesY(int dir)
  {
    for(Face f: faces)
    {
      f.turnY(dir*HALF_PI);
    }
  }
  
  void show()
  {
    noFill();
    if(highlight) fill(#0064FF);
    stroke(0);
    strokeWeight(0.10);
    pushMatrix();
    applyMatrix(matrix);
    box(1);
    for (Face f: faces)
    {
      f.show();
    }

    popMatrix();
  }
  
  
  
  void update(int x, int y, int z)
  {
    matrix.reset();
    matrix.translate(x, y, z);
    this.x = x;
    this.y = y;
    this.z = z;
  }
}
