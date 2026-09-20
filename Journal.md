Journal

Phase 1

I registered the images in pubspec.yaml by adding the assets/images/
directory under the Flutter assets section. This allows Flutter to access
the local character images using their asset paths.

When a large image is displayed without constraints, it can be larger than
the available screen space and cause an overflow. The Container gives the
image a constrained area, while BoxFit.cover scales the image so it fills
the available space while keeping its aspect ratio.

One thing I had to pay attention to was making sure the asset path and
filename matched the actual image file.

------------------------

Phase 2

I used a Row to place three BradyTile widgets next to each other. I wrapped
each BradyTile in an Expanded widget so Flutter could divide the available
horizontal space evenly between the three characters.

If I remove Expanded, each tile tries to use its own natural size instead of
sharing the available width. This can cause the Row to become wider than the
screen and create an overflow.

Expanded communicates the available constraints from the Row to each
BradyTile. Since all three Expanded widgets have the same flex value, they
each receive approximately one-third of the available width.

----------------------

Phase 3

For Phase 3, I nested Rows inside a Column to create the 3x3 grid. I used
Expanded around each Row so the three rows would divide the available
vertical space evenly.

I also used Expanded around each BradyTile inside the Rows. This divides the
available horizontal space evenly between the three tiles.

This demonstrates the Flutter layout rule "constraints go down, sizes go
up." The Column gives constraints to the Rows, and each Row gives horizontal
constraints to its children. The Expanded widgets make sure the available
space is divided evenly instead of allowing the images to overflow the
screen.
