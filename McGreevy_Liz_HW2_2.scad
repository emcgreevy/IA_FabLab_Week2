module base(){
	$fn=9;
	minkowski()
	{
	 cube(size= [10,20,15], center=true);
	 sphere(r=2,h=1);
	}
}//end of platform base

module toast_slot(x,y,z){
translate([x,y,z])
cube(size=[2,15,15], center=true);
}

difference(){
base();
toast_slot(-3,0,10);
toast_slot(3,0,10);
translate([0,12,0])
cube(size=[2,2,8], center=true);
}//end of difference

translate([0,12,-5])
cube(size=[5,5,2], center=true);