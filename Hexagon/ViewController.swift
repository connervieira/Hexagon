//
//  ViewController.swift
//  Hexagon
//
//  Created by Conner Vieira on 8/17/19.
//  Copyright © 2019 V0LT. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var ColorSelection: NSColorWell!
    @IBOutlet weak var ColorReading: NSTextField!
    @IBOutlet weak var RoundCheckBox: NSButton!
    @IBOutlet weak var HexReading: NSTextField!
    @IBOutlet weak var HumanReading: NSTextField!
    
    @IBOutlet weak var CopyHTMLButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let timer = Timer.scheduledTimer(withTimeInterval: 0.016, repeats: true, block: { timer in // Update all fields 60 times per second
            
            self.HexReading.stringValue = "#" + String(format:"%02X", Int(self.ColorSelection.color.redComponent*255)) + String(format:"%02X", Int(self.ColorSelection.color.greenComponent*255)) + String(format:"%02X", Int(self.ColorSelection.color.blueComponent*255)) // Calculate the HEX value, and display
            
            if (self.RoundCheckBox.state == .off) { // Run if the user has turned rounding off
                self.ColorReading.stringValue = "rgb(" + String(Float(self.ColorSelection.color.redComponent)*255) + ", " + String(Float(self.ColorSelection.color.greenComponent)*255) + ", " + String(Float(self.ColorSelection.color.blueComponent)*255) + ")"; // Show RGB values without rounding
            } else if (self.RoundCheckBox.state == .on) { // Run if the user has turned rounding on
                self.ColorReading.stringValue = "rgb(" + String(round(Float(self.ColorSelection.color.redComponent)*255)) + ", " + String(round(Float(self.ColorSelection.color.greenComponent)*255)) + ", " + String(round(Float(self.ColorSelection.color.blueComponent)*255)) + ")"; // Show RGB values with rounding
            }
            
            var hex = self.HexReading.stringValue; // Save the HEX output field as a variable to check for RGB colors
            var human = "N/A"; // Default the HTML color name variable to "N/A"
            
            
            // Check to see if the HEX value matches any human readable HTML color names
            if (hex == "#F0F8FF") {
                human = "AliceBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FAEBD7") {
                human = "AntiqueWhite";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00FFFF") {
                human = "Aqua";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#7FFFD4") {
                human = "Aquamarine";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F0FFFF") {
                human = "Azure";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F5F5DC") {
                human = "Beige";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFE4C4") {
                human = "Bisque";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#000000") {
                human = "Black";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFEBCD") {
                human = "BlanchedAlmond";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#0000FF") {
                human = "Blue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#8A2BE2") {
                human = "BlueViolet";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#A52A2A") {
                human = "Brown";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DEB887") {
                human = "BurleyWood";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#5F9EA0") {
                human = "CadetBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#7FFF00") {
                human = "Chartreuse";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#D2691E") {
                human = "Chocolate";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF7F50") {
                human = "Coral";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#6495ED") {
                human = "CornflowerBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFF8DC") {
                human = "Cornsilk";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DC143C") {
                human = "Crimson";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00FFFF") {
                human = "Cyan";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00008B") {
                human = "DarkBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#008B8B") {
                human = "DarkCyan";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#B8860B") {
                human = "DarkGoldenRod";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#A9A9A9") {
                human = "DarkGrey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#A9A9A9") {
                human = "DarkGray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#006400") {
                human = "DarkGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#BDB76B") {
                human = "DarkKhaki";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#8B008B") {
                human = "DarkMagenta";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#556B2F") {
                human = "DarkOliveGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF8C00") {
                human = "DarkOrange";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#9932CC") {
                human = "DarkOrchid";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#8B0000") {
                human = "DarkRed";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#E9967A") {
                human = "DarkSalmon";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#8FBC8F") {
                human = "DarkSeaGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#483D8B") {
                human = "DarkSlateBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#2F4F4F") {
                human = "DarkSlateGray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#2F4F4F") {
                human = "DarkSlateGrey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00CED1") {
                human = "DarkTurquoise";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#9400D3") {
                human = "DarkViolet";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF1493") {
                human = "DeepPink";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00BFFF") {
                human = "DeepSkyBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#696969") {
                human = "DimGray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#696969") {
                human = "DimGrey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#1E90FF") {
                human = "DodgerBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#B22222") {
                human = "FireBrick";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFAF0") {
                human = "FloralWhite";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#228B22") {
                human = "ForestGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF00FF") {
                human = "Fuchsia";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DCDCDC") {
                human = "Gainsboro";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F8F8FF") {
                human = "GhostWhite";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFD700") {
                human = "Gold";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DAA520") {
                human = "GoldenRod";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#808080") {
                human = "Gray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#808080") {
                human = "Grey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#008000") {
                human = "Green";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#ADFF2F") {
                human = "GreenYellow";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F0FFF0") {
                human = "HoneyDew";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF69B4") {
                human = "HotPink";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#CD5C5C") {
                human = "IndianRed";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#4B0082") {
                human = "Indigo";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFFF0") {
                human = "Ivory";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F0E68C") {
                human = "Khaki";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#E6E6FA") {
                human = "Lavender";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFF0F5") {
                human = "LavenderBlush";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#7CFC00") {
                human = "LawnGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFACD") {
                human = "LemonChiffon";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#ADD8E6") {
                human = "LightBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F08080") {
                human = "LightCoral";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#E0FFFF") {
                human = "LightCyan";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FAFAD2") {
                human = "LightGoldenRodYellow";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#D3D3D3") {
                human = "LightGray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#D3D3D3") {
                human = "LightGrey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#90EE90") {
                human = "LightGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFB6C1") {
                human = "LightPink";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFA07A") {
                human = "LightSalmon";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#20B2AA") {
                human = "LightSeaGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#87CEFA") {
                human = "LightSkyBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#778899") {
                human = "LightSlateGray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#778899") {
                human = "LightSlateGrey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#B0C4DE") {
                human = "LightSteelBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFFE0") {
                human = "LightYellow";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00FF00") {
                human = "Lime";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#32CD32") {
                human = "LimeGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FAF0E6") {
                human = "Linen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF00FF") {
                human = "Magenta";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#800000") {
                human = "Maroon";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#66CDAA") {
                human = "MediumAquaMarine";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#0000CD") {
                human = "MediumBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#BA55D3") {
                human = "MediumOrchid";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#9370DB") {
                human = "MediumPurple";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#3CB371") {
                human = "MediumSeaGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#7B68EE") {
                human = "MediumSlateBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00FA9A") {
                human = "MediumSpringGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#48D1CC") {
                human = "MediumTurquoise";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#C71585") {
                human = "MediumVioletRed";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#191970") {
                human = "MidnightBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F5FFFA") {
                human = "MintCream";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFE4E1") {
                human = "MistyRose";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFE4B5") {
                human = "Moccasin";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFDEAD") {
                human = "NavajoWhite";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#000080") {
                human = "Navy";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FDF5E6") {
                human = "OldLace";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#808000") {
                human = "Olive";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#6B8E23") {
                human = "OliveDrab";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFA500") {
                human = "Orange";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF4500") {
                human = "OrangeRed";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DA70D6") {
                human = "Orchid";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#EEE8AA") {
                human = "PaleGoldenRod";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#98FB98") {
                human = "PaleGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#AFEEEE") {
                human = "PaleTurquoise";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DB7093") {
                human = "PaleVioletRed";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DB7093") {
                human = "PaleVioletRed";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFEFD5") {
                human = "PapayaWhip";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFDAB9") {
                human = "PeachPuff";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#CD853F") {
                human = "Peru";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFC0CB") {
                human = "Pink";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#DDA0DD") {
                human = "Plum";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#B0E0E6") {
                human = "PowderBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#800080") {
                human = "Purple";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#663399") {
                human = "RebeccaPurple";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF0000") {
                human = "Red";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#BC8F8F") {
                human = "RosyBrown";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#4169E1") {
                human = "RoyalBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#8B4513") {
                human = "SaddleBrown";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FA8072") {
                human = "Salmon";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F4A460") {
                human = "SandyBrown";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#2E8B57") {
                human = "SeaGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFF5EE") {
                human = "SeaShell";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#A0522D") {
                human = "Sienna";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#C0C0C0") {
                human = "Silver";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#87CEEB") {
                human = "SkyBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#6A5ACD") {
                human = "SlateBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#708090") {
                human = "SlateGray";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#708090") {
                human = "SlateGrey";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFAFA") {
                human = "Snow";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#00FF7F") {
                human = "SpringGreen";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#4682B4") {
                human = "SteelBlue";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#D2B48C") {
                human = "Tan";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#008080") {
                human = "Teal";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#D8BFD8") {
                human = "Thistle";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FF6347") {
                human = "Tomato";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#40E0D0") {
                human = "Turquoise";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#EE82EE") {
                human = "Violet";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F5DEB3") {
                human = "Wheat";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFFFF") {
                human = "White";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#F5F5F5") {
                human = "WhiteSmoke";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#FFFF00") {
                human = "Yellow";
                self.CopyHTMLButton.isEnabled = true
            } else if (hex == "#9ACD32") {
                human = "YellowGreen";
                self.CopyHTMLButton.isEnabled = true
            } else {
                self.CopyHTMLButton.isEnabled = false
            }
            
            self.HumanReading.stringValue = human; // Display the human readable HTML color name.
            
        });
        
        
    }
    
    @IBAction func CopyRGB(_ sender: Any) { // Copy the RGB values to the clipboard when clicked
        let pasteBoard = NSPasteboard.general // Identify the clipboard
        pasteBoard.clearContents() // Clear the existing contents of the clipboard
        pasteBoard.writeObjects([self.ColorReading.stringValue as NSString]) // Write the RGB values to the clipboard
    }
    
    @IBAction func CopyHTML(_ sender: Any) { // Copy the HTML color name to the clipboard when clicked
        let pasteBoard = NSPasteboard.general // Identify the clipboard
        pasteBoard.clearContents() // Clear the existing contents of the clipboard
        pasteBoard.writeObjects([self.HumanReading.stringValue as NSString]) // Write the HTML color name to the clipboard
    }
    
    @IBAction func CopyHEX(_ sender: Any) { // Copy the HEX value to the clipboard when clicked
        let pasteBoard = NSPasteboard.general // Identify the clipboard
        pasteBoard.clearContents() // Clear the existing contents of the clipboard
        pasteBoard.writeObjects([self.HexReading.stringValue as NSString]) // Write the HEX value to the clipboard
    }
}

