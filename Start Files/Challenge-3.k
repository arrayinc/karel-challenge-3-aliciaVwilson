/* File: Challenge-3.k
 ---------------------------
Write a program that teaches Karel to climb a mountain.

The steps involved are to:

1. Move up to the mountain.
2. Climb each of the four stair steps to reach the summit.
3. Plant a flag (represented by a beeper, of course) at the top of the mountain.
4. Climb down each of the four stair steps on the opposite side.
5. Move forward to the east end of the world.

*/

import "turns";

function ClimbAMountain(){
	moveToMountain();
	climbUp();
	plantFlag();
	climbDown();
	moveToEnd();
}

function moveToMountain(){
	while(frontIsClear()){
		move();
	}
}

function climbUp(){
	repeat(4){
		climbStep();
	}
}

function climbStep(){
	turnLeft();
	move();
	turnRight();
	move();
}

function plantFlag(){
	putBeeper();
}

function climbDown(){
	repeat(4){
		descendStep();
	}
}

function descendStep(){
	move();
	turnRight();
	move();
	turnLeft();
}

function moveToEnd(){
	while(frontIsClear()){
		move();
	}
}