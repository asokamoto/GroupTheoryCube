void keyPressed()
{
  
  switch(key)
  {
    
    case 'd':
      move = allMoves[0];
      move.start();
      break;
    case 'D':
      move = allMoves[1];
      move.start();
      break;
    case 'u':
      move = allMoves[2];
      move.start();
      break;
    case 'U':
      move = allMoves[3];
      move.start();
      break;
    case 'r':
      move = allMoves[4];
      move.start();
      break;
    case 'R':
      move = allMoves[5];
      move.start();
      break;
    case 'L':
      move = allMoves[6];
      move.start();
      break;
    case 'l':
      move = allMoves[7];
      move.start();
      break;
    case 'f':
      move = allMoves[8];
      move.start();
      break;
    case 'F':
      move = allMoves[9];
      move.start();
      break;
    case 'b':
      move = allMoves[10];
      move.start();
      break;
    case 'B':
      move = allMoves[11];
      move.start();
      break;
    case 'a':
      count = 0;
      move =  associateALf.get(0);
      list = associateALf;
      move.start();
      count = 0;
      break;
    case 'A':
      count = 0;
      move =  associateALb.get(0);
      list = associateALb;
      move.start();
      count = 0;
      break;
    case 'i':
      count = 0;
      list = identityAL;
      move = identityAL.get(0);
      move.start();
      count = 0;
      break;
    case 'p':
      list = listTemp;
      resetCube();
      break;
    case 'o':
      count = 0;
      list = orderAL;
      move = orderAL.get(0);
      move.start();
      count = 0;
      break;
   case 'c':
      count = 0;
      list = invAL1;
      move = invAL1.get(0);
      move.start();
      count = 0;
      break;
      
   case 'V':
      count = 0;
      list = invAL2;
      move = invAL2.get(0);
      move.start();
      count=0;
      break;
   
   case 'v':
      count = 0;
      list = invAL3;
      move = invAL3.get(0);
      move.start();
      count =0;
      break;

  case 'C':
      count = 0;
      list = invAL4;
      move = invAL4.get(0);
      move.start();
      count = 0;
      break;

      


  }

    
}
