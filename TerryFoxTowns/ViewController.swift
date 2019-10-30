//
//  ViewController.swift
//  TerryFoxTowns
//
//  Created by Russell Gordon on 2019-10-26.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // Outlets, constants, and variables defined here will be available for use anywhere below.
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var labelOutput: UILabel!
    @IBOutlet weak var Distance: UITextField!
    
    // NOTE TO STUDENTS
    // Below this line, add an outlet to connect the text field, so you can obtain how many km Terry has run
    
    
    // MARK: Methods
    // This method runs once when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    // Add to the content of the label
    // Use this function to add a new city to the label
    // NOTE TO STUDENTS: Do not delete this function.
    func prependToLabel(this newText: String) {
        
        // 1. Move to next line in the label (\n)
        // 2. Add the new text (newText)
        labelOutput.text! = newText + "\n" + labelOutput.text!
        
    }
    
    // This function resets the contents of the label
    // NOTE TO STUDENTS: Do not delete this function.
    func resetLabel() {
        
        // Set the text
        labelOutput.text = ""
        
        // Resize UI
        resizeLabelAndScrollView()
        
    }
        
        // Reset the label
             resetLabel()
    
    // This function sizes the label and the scroll view so that the scroll view will scroll
    // NOTE TO STUDENTS: Do not delete this function.
    func resizeLabelAndScrollView() {
        
        // Resize the label to fit the current text it contains
        labelOutput.sizeToFit()
        
        // Set the scroll view size
        // 1. width same as it already was
        // 2. height same as label
        //    (recall label was just resized to fit new content)
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: labelOutput.frame.size.height)

    }

    // NOTE TO STUDENTS
    // After these comments, you should fill in the action below that has been connected to the button "Show Towns Terry Has Been To".
    // Then, use the action to obtain the km Terry has run (from the text field) and write logic inside the action to add the towns.
    // Remember, look at the hint given – be sure you review this page:
    // https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html#ID140
        func showTowns(_ sender: Any) {
        
        // Dismisses the keyboard (so it does not block the view of the output)
        view.endEditing(true)

        // NOTE TO STUDENTS
        // Add your code below...
        
            guard let DistanceAsString = Distance.text else {
                labelOutput.text = ("Please enter a value")
                return
            }
            
            guard let DistanceAsInteger = Int(DistanceAsString) else {
                labelOutput.text = ("Please enter a numeric value")
                return
            }
            
            switch DistanceAsInteger {
            case 5153...5372:
                prependToLabel(this: "Terrance Bay, ON")
                fallthrough
            case 4901...5152:
                prependToLabel(this: "Wawa, ON")
                fallthrough
            case 4675...4900:
                prependToLabel(this: "Sault Ste. Marie, ON")
                fallthrough
            case 4230...4674:
                prependToLabel(this: "Sudbury, ON")
                fallthrough
            case 4153...4429:
                prependToLabel(this: "Gravenhurst, ON")
                fallthrough
            case 3622...4152:
                prependToLabel(this: "Hamilton, ON")
                fallthrough
            case 3523...3621:
                prependToLabel(this: "Toronto, ON")
                fallthrough
            case 3508...3522:
                prependToLabel(this: "Scarborough Civic Center, ON")
                fallthrough
            case 3488...3507:
                prependToLabel(this: "Pickering, ON")
                fallthrough
            case 3123...3487:
                prependToLabel(this: "Ottawa, ON")
                fallthrough
            case 3113...3122:
                prependToLabel(this: "Outside Ottawa, ON")
                fallthrough
            case 3030...3112:
                prependToLabel(this: "Hawkesbury, ON")
                fallthrough
            case 2917...3029:
                prependToLabel(this: "Monteral, QC")
                fallthrough
            case 2663...2916:
                prependToLabel(this: "Quebec City, QC")
                fallthrough
            case 2592...2662:
                prependToLabel(this: "Highway 20, QC")
                fallthrough
            case 2426...2591:
                prependToLabel(this: "Highway 185, QC")
                fallthrough
            case 2256...2425:
                prependToLabel(this: "Perth-Andover, NB")
                fallthrough
            case 2214...2255:
                prependToLabel(this: "Bristol, NB")
                fallthrough
            case 1865...2213:
                prependToLabel(this: "West of Monton, NB")
                fallthrough
            case 1728...1864:
                prependToLabel(this: "Charlottetown, PEI")
                fallthrough
            case 1373...1727:
                prependToLabel(this: "Dartmouth, NS")
                fallthrough
            case 1278...1372:
                prependToLabel(this: "Sheet Harbor, NS")
                fallthrough
            case 882...1277:
                prependToLabel(this: "Port-aux-Basques, NF")
                fallthrough
            case 542...881:
                prependToLabel(this: "South brook Junction, NF")
                fallthrough
            case 346...541:
                prependToLabel(this: "Gander, NF")
                fallthrough
            case 0...345:
                prependToLabel(this: "St.John's, NF")

            default:
                prependToLabel(this: "He died")
            }
    }

  }

}
