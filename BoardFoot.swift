//
//  BoardFoot.swift
//
//  Created by Zak Goneau
//  Created on 2025-03-05
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This calculates the length of a board foot using functions

// Import library
import Foundation

// Define main function
func main() {

    // Initialize variables
    var length:Double = 0

    // Introduce program to user
    print("This calculates the length of a board foot with given width and height using a function.")

    // Get user width
    print("Enter a width(in): ")

    // Try to assign input as string and convert into a double
    guard let widthString = readLine(), let width = Double(widthString) else {

        // Tell user invalid input if failed conversion
        print("Invalid width. It must be positive.")

        // Exit function
        return
    }

    // Check if width is negative
    if (width < 0) {

        // Tell user number is out of range
        print("\(width) must be positive.")

    // Otherwise valid, get height
    } else {

        // Get user height
        print("Enter a height(in): ")

        // Try to assign input as string and convert into a double
        guard let heightString = readLine(), let height = Double(heightString) else {

            // Tell user invalid input if failed conversion
            print("Invalid height. It must be positive.")

            // Exit function
            return
        }

        // Check if height is negative
        if (height < 0) {

            // Tell user number is out of range
            print("\(height) must be positive.")

        // Otherwise valid call function to calculate length
        } else {

            // Call function to calculate length
            length = boardFoot(width: width, height: height)

            // Output length
            print("The length of a board foot with a width of \(width)in and a height of \(height)in is ")
            let LENGTH_ROUNDED:String = String(format: "%.2f", length)
            print("\(LENGTH_ROUNDED)in.")
        }
    }
// Call function
} ; main()

// Define function to calculate length of board foot
func boardFoot(width:Double, height:Double) -> Double {

    // Initialize variables
    let VOLUME:Double = 144
    var length:Double = 0

    // Calculate length
    length = VOLUME / (width * height)

    // Return length
    return length
}
