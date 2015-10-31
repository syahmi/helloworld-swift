//
//  HelloViewController.swift
//  Hello World
//
//  Created by MSi on 31/10/2015.
//  Copyright © 2015 MSi. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    var helloworld: UILabel!
    var hiButton: UIButton!
    var byeButton: UIButton!
    var resetButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        helloworld = UILabel(frame: CGRect(x: 0, y: 20, width: 320, height: 100))
        helloworld.text = "Hello World"
        helloworld.textColor = UIColor.blackColor()
        helloworld.textAlignment = NSTextAlignment.Center
        helloworld.font = UIFont.systemFontOfSize(24)
        
        self.view.addSubview(helloworld)
        
        hiButton = UIButton(frame: CGRect(x: 20, y: 120, width: 130, height: 40))
        hiButton.setTitle("Hello There", forState: UIControlState.Normal)
        hiButton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        hiButton.addTarget(self, action: "sayHi", forControlEvents: UIControlEvents.TouchUpInside)
        hiButton.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(hiButton)
        
        byeButton = UIButton(frame: CGRect(x: 170, y: 120, width: 130, height: 40))
        byeButton.setTitle("Goodbye", forState: UIControlState.Normal)
        byeButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        byeButton.addTarget(self, action: "sayGoodbye", forControlEvents: UIControlEvents.TouchUpInside)
        byeButton.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(byeButton)

        resetButton = UIButton(frame: CGRect(x: 20, y: 180, width: 280, height: 40))
        resetButton.setTitle("Reset", forState: UIControlState.Normal)
        resetButton.addTarget(self, action: "reset", forControlEvents: UIControlEvents.TouchUpInside)
        resetButton.backgroundColor = UIColor.blackColor()
        
        self.view.addSubview(resetButton)
        
        // Do any additional setup after loading the view.
    }
    
    func sayHi() {
        print("Hello there")
        helloworld.text = "Hello There"
    }

    func sayGoodbye() {
        print("Goodbye")
        helloworld.text = "Goodbye"
    }
    
    func reset() {
        helloworld.text = "Hello World"
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
