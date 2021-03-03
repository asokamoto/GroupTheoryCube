# Group Theory Visualized Through the Rubik’s Cube
**By Ashlyn Okamoto**  

**About**  
This code was created for a thesis project for the Portland State University Honors College by Computer Science student, Ashlyn Okamoto. The code in this repository was created with the language Java-Processing. The base of the cube was created following the [tutorial](https://thecodingtrain.com/CodingChallenges/142.1-rubiks-cube.html) by TheCodingTrain. Thesis advisor is Andrew Wilson.  


**How to use**  
You will need to download [Processing](https://processing.org/) to run this project. Once you have downloaded the software, download the code in this repository. When opening the project in the Processing environment, press the play button at the top left to launch the cube. 

## Functionality  
Use the mouse to move the cube around and double click anywhere on the window to reset the cube to its original position. You can move the cube just like any other cube, (clockwise and counter-clockwise when the red side is facing the user – bottom side is the same as the top side, back side is the same as the front side)

**Basic Moves**  
Keypress [r] – Moves the right side of the cube clockwise  
Keypress [R] – Moves the right side of the cube counter-clockwise  
Keypress [l] – Moves the left side of the cube clockwise   
Keypress [L] – Moves the left side of the cube counter-clockwise  
Keypress [u]  – Moves the top side of the cube clockwise  
Keypress [U] – Moves the top side of the cube counter-clockwise  
Keypress [f] – Moves the front side of the cube clockwise  
Keypress [F] – Moves the front side of the cube counter-clockwise  
Keypress [b] – Moves the back side of the cube clockwise  
Keypress [B] – Moves the back side of the cube counter-clockwise  
Keypress [d] – Moves the bottom side of the cube clockwise  
Keypress [D] – Moves the bottom side of the cube counter-clockwise  

Keypress [p] – Resets the cube to solved state  

**Group Theory Concepts**  
  
- Keypress [i]: Identity  
  
*Definition ([Wikipedia](https://en.wikipedia.org/wiki/Identity_element)):
"The identity element, or neutral element, is a special type of element of a set with respect to a binary operation on that set, which leaves any element of the set unchanged when combined with it"*  
   
In this case, when pressing the 'i' button on the keyboard, the cube will randomly choose a face to turn four times. This demonstrates that when the cube does these four moves, the cube is put back to the same position that it was previously.
For example, in addition, the identity element is 0 because when adding 0 to anything, the outcome is itself. In multiplication, the identity element is 1 as anything multiplied by 1 is itself. In the case of the Rubik's cube, either doing nothing to the cube, or turning a single side four times is the identity element of the group. There are many instances of identity within the group that is the Rubik’s cube. In fact, there are many sequences of moves that end with every piece where they began with. All of these sequences are considered identity elements. 
  
	
- Keypress [a]: Associativity  
  
*Definition([Wikipedia](https://en.wikipedia.org/wiki/Associative_property)):
"The associative property is a property of some binary operations, which means that rearranging the parentheses in an expression will not change the result."* 

 In order for the Rubik’s Cube to be considered a group, it must have an associative property. The grouping of turns can be changed, and the final result will be the same. Within this cube, I have implemented a short series of moves: R U R’. Though this may not seem like much, due to the Rubik’s cube being a group, this means that the associative property is evident in these three moves. These moves van be grouped as (R U) R’ or R (U R’) and still have the same result. The order of the turns is not being changed, just which moves are being grouped together. 

  
- KeyPress [o]: Order  

The Wikipedia definition of order is a little too confusing for this level of understanding, so I will give an example instead. Given a group G with an order of 2, G has two elements. The easiest way to understand it is attributing it with size. When a group is generated, it is important to know whether or not that group has an order and what it is. Within this project, I have created a set of moves, R U R’ U’. Each press of the specific key, the cube will do this set of moves. If the user pressed the button 6 times, the cube will eventually be put back to its original position. This means that this group of moves has an order of 6. The identity always has an order of one, as putting the cube back to its original state can be seen as one move as a whole, but the individual on-sided rotation that is used to demonstrate identity in this project has an order of 4. 

- Keypress [v], [V], [c], [C]: Inverses

*Definition([Wikipedia](https://en.wikipedia.org/wiki/Inverse_element)): 
"The idea of an inverse element generalises the concepts of negation (sign reversal) (in relation to addition) and reciprocation (in relation to multiplication)"*  
  
According to Wikipedia, inverses are defined as,

"The idea of an inverse element generalizes the concepts of negation (sign reversal) (in relation to addition) and reciprocation (in relation to multiplication)"

An inverse is the move that undoes another. In multiplication the inverse of x is 1/x as this undoes the initial multiplication. In terms of the Rubik’s cube, each individual move has an inverse. For example, R has R’, U has U’ and so on. As mentioned before, the “sock and shoe” example works best for a real-world application. To reiterate, when seeing an equation like the following, 

Eq. 1 (xy)^(-1)=  (y)^(-1) x^(-1) 

students may just memorize that when expanding inverses, the expression puts the variables in reverse order. A real-world example to remember this concept is the shoes and socks explanation. When putting on shoes, you put your socks on first, then your shoes. When taking your shoes off and creating an inverse process, you take your shoes off first, then your socks. For this project, I have the regular functionality (any move and its prime) that shows inverse in the basic sense, but I have also implemented examples of the expansion of inverses. Keypresses 'V' and 'v' result in the incorrect order. In terms of the equation above, it would show,

Eq. 2 (xy)^(-1)= (x)^(-1) y^(-1)

which is incorrect. Keypresses 'C' and 'c' will show the correct equation (eq. 1), and the user will be able to tell whether they are doing the correct moves if the resulting cube is fully solved (or in its original position).

