HTML5 Challenge
===============

Shapes and Colors:
------------------
* The scene is wireframed as can be seen in wireframe.png
* User can choose the Shape dropdown and pick a square, circle for the shape. (Square is the default)
 * Once a shape is chosen from the dropdown, when a user clicks on an empty area in the canvas the chosen shape is drawn. The bounding rectangle of the shape is 100x100px and the origin is the cursor location.
	* Shape z-order is the order of shapes created where the last created shape is topmost.
	* Clicking on an area selects the top most shape in that area.
* User can choose a shape and drag them around the canvas.
	* The shape is cropped around the edges.
* User can then choose the Color dropdown and the color dropdown shows a colorwheel:
 * The color wheel shows 12 colors. You can pick the colors you like for each wheel. (kuler.adobe.com could be helpful in picking colors)
 * The triangle in the middle points to the selected color.
* By dragging the color wheel down (using the mouse-down-move clockwise), you can start spinning them. 
  * The faster you drag them it will accelerate and spin faster. 
  * Once you stop dragging it, the wheel should start slowing down. 
  * Once the wheel stops, the color selected is where the triangle points to.
* The selected color will be the fill color of the selected shape on canvas. 

Instructions:
-------------
* Please use Javascript, HTML5, CSS. The app should run on Chrome, Safari and Firefox, latest versions. (Desktop)
* Please pick an MVC framework of your choice. (Backbone, Ember, Angular ...) We would like to see well structured code.
* You do not need to write the backend server code for this, but please structure your code so that the shapes, their locations on the canvas and their colors can be persisted back.
* Clean packaging of the code is a good plus for us to see. (Folder structure, dependency declarations, build scripts with linting etc.)
* Code quality is as important as functionality. Well structured Javascript and CSS code will be very important for us. 
* Do not hesitate to show your artistic skills either. The look and feel is up-to-you. 



