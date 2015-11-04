//
//  HelloViewController.swift
//  Hello World
//
//  Created by MSi on 31/10/2015.
//  Copyright © 2015 MSi. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var hiButton: UIButton!
    @IBOutlet weak var byeButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hiButton.layer.cornerRadius = 5.0
        byeButton.layer.cornerRadius = 5.0
        resetButton.layer.cornerRadius = 5.0
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func helloThere(sender: AnyObject) {
        print("Hello there")
        helloWorldLabel.text = "Hello There"
        helloWorldLabel.textColor = UIColor.greenColor()
    }
    
    @IBAction func goodBye(sender: AnyObject) {
        print("Goodbye")
        helloWorldLabel.text = "Goodbye"
        helloWorldLabel.textColor = UIColor.redColor()
    }
    
    @IBAction func reset(sender: AnyObject) {
        helloWorldLabel.text = "Hello World"
        helloWorldLabel.textColor = UIColor.whiteColor()
    }
    
    @IBAction func sliderControl(sender: AnyObject) {
        print("Slider")
        helloWorldLabel.text = "This is Slider"
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
