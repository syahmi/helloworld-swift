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
        
//        self.view.backgroundColor = UIColor.lightGrayColor()
//        
//        helloWorldLabel = UILabel(frame: CGRect(x: 0, y: 20, width: 320, height: 100))
//        helloWorldLabel.text = "Hello World"
//        helloWorldLabel.textColor = UIColor.blackColor()
//        helloWorldLabel.textAlignment = NSTextAlignment.Center
//        helloWorldLabel.font = UIFont.systemFontOfSize(24)
//        
//        self.view.addSubview(helloWorldLabel)
        
//        hiButton = UIButton(frame: CGRect(x: 20, y: 120, width: 130, height: 40))
//        hiButton.setTitle("Hello There", forState: UIControlState.Normal)
//        hiButton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
//        hiButton.addTarget(self, action: "sayHi", forControlEvents: UIControlEvents.TouchUpInside)
//        hiButton.backgroundColor = UIColor.whiteColor()
//        
//        self.view.addSubview(hiButton)
        
//        byeButton = UIButton(frame: CGRect(x: 170, y: 120, width: 130, height: 40))
//        byeButton.setTitle("Goodbye", forState: UIControlState.Normal)
//        byeButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
//        byeButton.addTarget(self, action: "sayGoodbye", forControlEvents: UIControlEvents.TouchUpInside)
//        byeButton.backgroundColor = UIColor.whiteColor()
//        
//        self.view.addSubview(byeButton)

//        resetButton = UIButton(frame: CGRect(x: 20, y: 180, width: 280, height: 40))
//        resetButton.setTitle("Reset", forState: UIControlState.Normal)
//        resetButton.addTarget(self, action: "reset", forControlEvents: UIControlEvents.TouchUpInside)
//        resetButton.backgroundColor = UIColor.blackColor()
//        
//        self.view.addSubview(resetButton)
        
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
