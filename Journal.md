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
