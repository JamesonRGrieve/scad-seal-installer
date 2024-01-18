// Inner diameters to cut.
SealInnerDiameters = [19.81,15.21,12.21];

// Inner depths to cut.
SealInnerDiameterDepths = [6.45,18.40,81.95];

// Width of the target seal.
SealWidth = 2.82;

// Available space to relieve the seal.
HousingReliefWidth = 0.01;

// Height Parameters To Drive Handle
SealSetDepth = 24.01;

// Thickness of the backing of the drive body.
DriveThickness = 0.01;

// Amount to inset the upper lip of the drive body.
BodyTaperInset = 0.01; 

// Diameter of the striking surface.
DriveHandleDiameter = 15.21; 

// Length of the cone section of the drive handle.
DriveHandleConeLength = 40.01; 

// Length of the straight section of the drive handle.
DriveHandleStraightLength = 55.01; 

DiameterIncludingWoodruff = 32.8;
WidthOfWoodruff = 5.1;
AngledCut = true;

// Resolution Parameter.
$fa = 1.00;
// Resolution Parameter.
$fs = 0.20;


function sum(v, i = 0, r = 0) = i < len(v) ? sum(v, i + 1, r + v[i]) : r;

difference() {
    union()
    {
        // Drive surface.
        cylinder(SealSetDepth, d1=max(SealInnerDiameters)+(SealWidth*2), d2=max(SealInnerDiameters)+(SealWidth*2));
        // Relief surface.
        translate([0,0,SealSetDepth])
            cylinder(DriveThickness, d1=max(SealInnerDiameters)+(SealWidth*2)+(HousingReliefWidth*2), d2=max(SealInnerDiameters)+(SealWidth*2)+(HousingReliefWidth*2)-BodyTaperInset);
        // Drive Handle Cone.
        translate([0,0,SealSetDepth+DriveThickness])
            cylinder(DriveHandleConeLength, d1=max(SealInnerDiameters)+(SealWidth*2)+(HousingReliefWidth*2)-BodyTaperInset, d2=DriveHandleDiameter);
        // Drive Handle Straight.
        translate([0,0,SealSetDepth+DriveThickness+DriveHandleConeLength])
            cylinder(DriveHandleStraightLength, d1=DriveHandleDiameter, d2=DriveHandleDiameter);
    };
    for ( i = [0 : len(SealInnerDiameters)-1] ){
        color([1,0,0]) cylinder(SealInnerDiameterDepths[i], d1=SealInnerDiameters[i], d2=SealInnerDiameters[i]);
    }
    if (WidthOfWoodruff > 0) translate([-WidthOfWoodruff/2,SealInnerDiameters[1]/2-WidthOfWoodruff/2,0]) cube([WidthOfWoodruff,WidthOfWoodruff,SealInnerDiameterDepths[1]]); 
    if (AngledCut) translate([0,0,SealInnerDiameterDepths[0]]) cylinder(1.15,d1=SealInnerDiameters[0],d2=SealInnerDiameters[1]);
}

    