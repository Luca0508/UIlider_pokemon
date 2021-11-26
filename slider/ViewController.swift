//
//  ViewController.swift
//  slider
//
//  Created by 蕭鈺蒖 on 2021/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var pokemonBallImage: UIImageView!
    @IBOutlet weak var mouseDragonImage: UIImageView!
    @IBOutlet weak var mouseImage: UIImageView!
    @IBOutlet weak var turtleImage: UIImageView!
    @IBOutlet weak var turtleDragonImage: UIImageView!
    @IBOutlet weak var dragonImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    


    @IBAction func move(_ sender: UISlider) {
        
        // let the image move as the slider change
        dragonImage.frame.origin.x = CGFloat(700 - 100 * sender.value)
        turtleImage.frame.origin.x = CGFloat(50 + 100 * sender.value)
        mouseImage.frame.origin.x = CGFloat(50 + 100 * sender.value)
        
        
        // Make the ball rotate
        pokemonBallImage.transform = CGAffineTransform(rotationAngle: CGFloat(Float(CGFloat.pi) / 2.7 * sender.value * 2.0))
        
        
        // when the slider reach certain value, another image will pop up
        if mouseImage.isHidden {
            if sender.value > 2.1{
                turtleDragonImage.isHidden = false
                
                // make the image zoom in
                turtleDragonImage.transform = CGAffineTransform(scaleX: CGFloat(sender.value/2.3), y: CGFloat(sender.value/2.3))
            }else{
                turtleDragonImage.isHidden = true
            }
        }else{
            if sender.value > 2.1{
                mouseDragonImage.isHidden = false
                mouseDragonImage.transform = CGAffineTransform(scaleX: CGFloat(sender.value/2.3), y: CGFloat(sender.value/2.3))
            }else{
                mouseDragonImage.isHidden = true
            }
        }
        
        
    }
    
    
    @IBAction func chooseTurtle(_ sender: UISlider) {
        mouseImage.isHidden = true
        turtleImage.isHidden = false
        mouseDragonImage.isHidden = true
        
        
        
        
    }
    
    @IBAction func chooseMouse(_ sender: UISlider) {
        mouseImage.isHidden = false
        turtleImage.isHidden = true
        turtleDragonImage.isHidden = true
       
    }
    
}

