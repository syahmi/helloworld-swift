//
//  HelloViewController.swift
//  Hello World
//
//  Created by MSi on 31/10/2015.
//  Copyright © 2015 MSi. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let helloworld: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 100))
        helloworld.text = "Hello World"
        helloworld.textColor = UIColor.blackColor()
        helloworld.textAlignment = NSTextAlignment.Center
        
        self.view.addSubview(helloworld)
        
        let hiButton: UIButton = UIButton(frame: CGRect(x: 20, y: 120, width: 130, height: 40))
        hiButton.setTitle("Hello there", forState: UIControlState.Normal)
        hiButton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        hiButton.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(hiButton)
        
        let byeButton: UIButton = UIButton(frame: CGRect(x: 170, y: 120, width: 130, height: 40))
        byeButton.setTitle("Goodbye", forState: UIControlState.Normal)
        byeButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        byeButton.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(byeButton)

        // Do any additional setup after loading the view.
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
