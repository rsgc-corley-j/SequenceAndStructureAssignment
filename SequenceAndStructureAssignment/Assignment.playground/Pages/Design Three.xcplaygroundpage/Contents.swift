/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//// Generate a grid
//canvas.drawShapesWithFill = false
//canvas.defaultBorderWidth = 1
//
//// This loop makes a 10 rows of columns
//for x in stride(from: 25, through: 475, by: 50){
//    
//    // This loop makes a single column, bottom to top
//    for y in stride(from: 25, through: 475, by: 50) {
//        
//        // Draw the shapes
//        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
//        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
//    }
//}

for x in stride(from: 0, through: 500, by: 100){
//    
//    for y in stride(from: 0, through: 500, by: 100){


        
        canvas.drawLine(fromX: 0 + x, fromY: 100, toX: 50 + x, toY: 50, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)


        canvas.drawLine(fromX: 100 + x, fromY: 100, toX: 50 + x, toY: 50, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)

        canvas.drawLine(fromX: 50 + x, fromY: 50, toX: 50 + x, toY: 0, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)

        canvas.drawLine(fromX: 0, fromY: 50, toX: 50, toY: 0, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)


        canvas.drawLine(fromX: 100 + x, fromY: 50, toX: 50 + x, toY: 0, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)



   }
//}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
