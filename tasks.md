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

Basic Features
--------------
x Selectable shape
o Selectable Color
o Place a shape on the canvas

Requirements
------------
o Be prepared to store objects' position & color
    o z order?
o Fixed shape size
o Changable colors
o Something about momentum and spinning the wheel

Object Graph
------------
o Shape
    o position, color, z-index
o Shape > Rectangle
o Shape > Circle
o Picker
    o Picker > Color
    o Picker > Shape

Optimization
------------
o Build custom versions of bootstrap, fontawesome, and curl to reduce size
o Stitchmin global 3rd party dependencies into one file
o Lazy load most dependencies after showing the first page