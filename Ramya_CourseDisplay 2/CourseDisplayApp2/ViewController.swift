//
//  ViewController.swift
//  CourseDisplayApp2
//
//  Created by Ajay Bandi on 3/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var semOffered: UILabel!
  
    
    @IBOutlet weak var prevBtn: UIButton!
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    let courses = [
        ["img01", "44555", "compiler design", "Fall2022"],
    ["img03", "44643", "Web Apps", "Spring 2023"],
    ["img02", "44656", "AI", "Summer 2023"]]
    
    var imageNum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Update the details of the first course. (image, num, tile, sem)
        UpdateCourse(imageNum)
        //Disable the previous button
        prevBtn.isEnabled = false
        
        //Enable the next button
        nextBtn.isEnabled = true
        
    }


    @IBAction func prevBtnClicked(_ sender: UIButton) {
        
        //Decrement image number
        imageNum -= 1
        
        // Update Previous course details
        UpdateCourse(imageNum)
        
        //Enable NextButton
        nextBtn.isEnabled = true
        
        //When you reach starting of array disable previous button
        if(imageNum == 0)
        {
            prevBtn.isEnabled = false
        }
    }
    
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        //Increment my image number
        imageNum += 1
        
        //Update the next course details
        UpdateCourse(imageNum)
        
        //Previous button should be enabled
        prevBtn.isEnabled = true
        //When you reach end of array, next button should be disabled.
        if(imageNum == courses.count-1)
        {
            nextBtn.isEnabled = false
        }
        
    }
    
    func UpdateCourse(_ imageNumber:Int)
    {
        displayImage.image = UIImage(named: courses[imageNum][0])
        crsNum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semOffered.text = courses[imageNum][3]
        
    }
}

