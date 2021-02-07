# Demonstrating Group Theory Concepts with the Rubik's Cube  
**By Ashlyn Okamoto**  

**About**  
This code was created for a thesis project for the Portland State University Honors College by Computer Science student, Ashlyn Okamoto. The code in this repository was created with the language Java-Processing. The base of the cube was created following the [tutorial](https://thecodingtrain.com/CodingChallenges/142.1-rubiks-cube.html) by TheCodingTrain. Thesis advisor is Andrew Wilson.  


**How to use**  
You will need to download [Processing](https://processing.org/) to run this project. Once you have downloaded the software, download the code in this repository. When opening the project in the Processing environment, press the play button at the top left to launch the cube. 

## Functionality  
You can move the cube just like any other cube, (clockwise and counter-clockwise when the red side is facing the user – bottom side is the same as the top side, back side is the same as the front side)

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
For example, in addition, the identity element is 0 because when adding 0 to anything, the outcome is itself. In multiplication, the identity element is 1 as anything multiplied by 1 is itself. In the case of the Rubik's cube, either doing nothing to the cube, or turning a single side four times is the identity element of the group.
  
	
- Keypress [a], [A]: Associativity  
  
*Definition([Wikipedia](https://en.wikipedia.org/wiki/Associative_property)):
"The associative property is a property of some binary operations, which means that rearranging the parentheses in an expression will not change the result."*  
  
For example, multiplication has an associative property because (a * b) * c = a * (b * c)  
  
- KeyPress [o]: Order  

*Definition([Wikipedia](https://en.wikipedia.org/wiki/Order_(group_theory))): 
"The order of a group is its cardinality, that is, the number of elements in its set. If the group is seen multiplicatively, the order of an element a of a group, sometimes also called the period length or period of a, is the smallest positive integer m such that a^m = e, where e denotes the identity element of the group, and am denotes the product of m copies of a. If no such m exists, a is said to have infinite order."*  
  
The example this cube uses, has the order of 6. When pressing the 'o' button, the moves R U R' U' will be done. If the 'o' button is pressed 6 times, the cube is returned to its original state. Another example is the identtity movement ('i') as each side has an order of 4. When moving any one side in the same direction 4 times, the cube is put back to its original position.  

