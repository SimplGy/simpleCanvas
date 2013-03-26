Tasks/Stories for Frontie Test
==============================

Architecture
------------
x Plug in existing appCore
x Strip out unused stuff
x Upgrade jQuery
x Add bootstrap
x Set up the two shell pages
x Simplify into a single application architecture
x Abstract pickers into separate views
x Set up a collection for shapes

Basic Features
--------------
x Selectable shape
x Selectable Color
x Place a shape on the canvas
x Place squares centered on the cursor
o Center circles on the cursor

Advanced Features
-----------------
o Momentum color wheel
o Ghost shape follows cursor over canvas

Object Graph
------------
o Shape
    o position, color, z-index
o Shape > Rectangle
o Shape > Circle

Optimization
------------
o Build custom versions of bootstrap, fontawesome, and curl to reduce size
o Stitchmin global 3rd party dependencies into one file
o Lazy load most dependencies after showing the first page
