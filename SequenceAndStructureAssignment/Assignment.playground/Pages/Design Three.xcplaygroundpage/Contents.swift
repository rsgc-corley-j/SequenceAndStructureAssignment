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

canvas.highPerformance = true


//first line of cubes

for x in stride(from: 0, through: 500, by: 50){
    
    for y in stride(from: 0, through: 500, by: 100){
        
        //colour and drawing the sides of the cubes
        
        canvas.lineColor = Color(hue: x + y, saturation: 100, brightness: 100, alpha: 100)
        
        for t in stride(from: 0, through: 35, by: 1) {
            canvas.drawLine(fromX: 0 + x, fromY: 50 - t + y, toX: 25 + x, toY: 35 - t + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
            
        }
        canvas.lineColor = Color(hue: x + y, saturation: 100, brightness: 100, alpha: 50)
        
        for s in stride(from: 0, through: 35, by: 1){
            canvas.drawLine(fromX: 50 + x, fromY: 50 + y - s, toX: 25 + x, toY: 35 + y - s, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        }
        canvas.drawLine(fromX: 25 + x, fromY: 35 + y, toX: 25 + x, toY: 0 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        canvas.drawLine(fromX: 0 + x, fromY: 15 + y, toX: 25 + x, toY: 0 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        canvas.drawLine(fromX: 50 + x, fromY: 15 + y, toX: 25 + x, toY: 0 + y, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        //second line of cubes
        
        //statements used to shift this line
        
        let shift = -25
        let rise = 50
        
        
        //colour and drawing the sides of the cubes
        
        canvas.lineColor = Color(hue: x + y, saturation: 100, brightness: 100, alpha: 100)
        
        for t in stride(from: 0, through: 35, by: 1) {
            canvas.drawLine(fromX: 0 + x + shift, fromY: 50 - t + y + rise, toX: 25 + x + shift, toY: 35 - t + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        }
        canvas.lineColor = Color(hue: x + y, saturation: 100, brightness: 100, alpha: 50)
        for s in stride(from: 0, through: 35, by: 1) {
            canvas.drawLine(fromX: 50 + x + shift, fromY: 50 - s + y + rise, toX: 25 + x + shift, toY: 35 - s + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        }
        
        canvas.drawLine(fromX: 25 + x + shift, fromY: 35 + y + rise, toX: 25 + x + shift, toY: 0 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        canvas.drawLine(fromX: 0 + x + shift, fromY: 15 + y + rise, toX: 25 + x + shift, toY: 0 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
        canvas.drawLine(fromX: 50 + x + shift, fromY: 15 + y + rise, toX: 25 + x + shift, toY: 0 + y + rise, lineWidth: 1, capStyle: NSLineCapStyle.squareLineCapStyle)
        
        
    }
}




/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
