/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
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

for x in stride(from: 200, through: 300, by: 10){
    
    if x == 200 {
        canvas.lineColor = Color.purple
    }
    else if x == 210 {
        canvas.lineColor = Color.blue
    }
    else if x == 220 {
        canvas.lineColor = Color.red
    }
    else if x == 230 {
        canvas.lineColor = Color.orange
    }
    else if x == 240 {
        canvas.lineColor = Color.yellow
    }
    else if x == 250 {
        canvas.lineColor = Color.purple
    }
    else if x == 260 {
        canvas.lineColor = Color.green
    }
    else if x == 270 {
        canvas.lineColor = Color.purple
    }
    else if x == 280 {
        canvas.lineColor = Color.yellow
    }
    else if x == 290 {
        canvas.lineColor = Color.orange
    }
    else if x == 300 {
        canvas.lineColor = Color.red
    }
    canvas.drawLine(fromX: 250, fromY: 500, toX: x, toY: 100, lineWidth: 2, capStyle: NSLineCapStyle.squareLineCapStyle)
    
    canvas.drawLine(fromX: 250, fromY: 0, toX: x, toY: 100, lineWidth: 2, capStyle: NSLineCapStyle.squareLineCapStyle)
    
    canvas.drawLine(fromX: 250, fromY: 400, toX: x, toY: 500, lineWidth: 2, capStyle: NSLineCapStyle.squareLineCapStyle)
}



for x in stride(from: 0, through: 500, by: 100){
    
    for y in stride(from: 0, through: 500, by: 200){
        
        
        
        canvas.drawLine(fromX: 0 + x, fromY: 100 + y, toX: 50 + x, toY: 75 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        canvas.drawLine(fromX: 100 + x, fromY: 100 + y, toX: 50 + x, toY: 75 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        canvas.drawLine(fromX: 50 + x, fromY: 75 + y, toX: 50 + x, toY: 0 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        canvas.drawLine(fromX: 0 + x, fromY: 25 + y, toX: 50 + x, toY: 0 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        canvas.drawLine(fromX: 100 + x, fromY: 25 + y, toX: 50 + x, toY: 0 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        //second line
        
        let shift = -50
        let rise = 100
        
        canvas.drawLine(fromX: 0 + x + shift, fromY: 100 + y + rise, toX: 50 + x + shift, toY: 75 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        canvas.drawLine(fromX: 100 + x + shift, fromY: 100 + y + rise, toX: 50 + x + shift, toY: 75 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        canvas.drawLine(fromX: 50 + x + shift, fromY: 75 + y + rise, toX: 50 + x + shift, toY: 0 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        canvas.drawLine(fromX: 0 + x + shift, fromY: 25 + y + rise, toX: 50 + x + shift, toY: 0 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        canvas.drawLine(fromX: 100 + x + shift, fromY: 25 + y + rise, toX: 50 + x + shift, toY: 0 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        
    }
}
        

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
