# Custom Seal Drive Tool Script

**Not For Commercial Use by Third Parties - See License**

This OpenSCAD script is designed for creating custom seal drive tools with various adjustable parameters.

Included are presets for the most common seals on the 3000GT / Stealth / GTO platform. Additional vehicles will be added as they are catalogged, and submissions by pull request are welcomed.

## Installation

To use this script, you need to install OpenSCAD:

1. Download OpenSCAD from [OpenSCAD official website](https://www.openscad.org/downloads.html).
2. Follow the installation instructions for your operating system.

## Script Parameters

- `SealInnerDiameters`: Array of inner diameters to cut.
- `SealInnerDiameterDepths`: Corresponding depths for each inner diameter.
- `SealWidth`: Width of the target seal.
- `HousingReliefWidth`: Available space to relieve the seal.
- `SealSetDepth`: Height parameters to drive handle.
- `DriveThickness`: Thickness of the backing of the drive body.
- `BodyTaperInset`: Amount to inset the upper lip of the drive body.
- `DriveHandleDiameter`: Diameter of the striking surface.
- `DriveHandleConeLength`: Length of the cone section of the drive handle.
- `DriveHandleStraightLength`: Length of the straight section of the drive handle.
- `DiameterIncludingWoodruff`: Diameter including the Woodruff key slot (if present, intended for Front Main Seals).
- `WidthOfWoodruff`: Width of the Woodruff key slot (if present, intended for Front Main Seals).
- `AngledCut`: Boolean to determine if an angled cut is required.
- `$fa`, `$fs`: Resolution parameters for the rendering.

## Usage

1. Open the script in OpenSCAD.
2. Adjust the parameters in the script using the right panel as needed (you should not need to modify the script itself as an end user).
3. Render the model by pressing F5.
4. Export the model for 3D printing or further processing.