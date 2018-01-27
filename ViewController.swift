//
//  ViewController.swift
//  0_1 - SpinningWheelNotifier
//
//  Created by Justin Reina on 11/12/15.
//  Copyright © 2015 Jaostech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        optDemo_addButton(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();

        return;
    }

    
    @objc func optDemo_addButton(_ view:UIView) {
        
        let button   = UIButton(type: UIButtonType.system) as UIButton;

        button.frame = CGRect(x: self.view.center.x-150, y: 100, width: 300, height: 50);
        
        button.backgroundColor = UIColor.green
        
        button.setTitle("Test Button", for: UIControlState());
  
        button.addTarget(self, action: #selector(ViewController.myButton_response(_:)), for:  .touchUpInside);

        view.addSubview(button);
        
        print("ViewController.optDemo_addButton(): Button added");
        
        return;
    }
    

    @objc var activityIndicator : UIActivityIndicatorView!;
    
    @objc func myButton_response(_ sender: UIButton!) {

        print("Button Response fired. Game on!");
        
        if(activityIndicator == nil) {
            activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray);

            activityIndicator.center = self.view.center;

            activityIndicator.color = UIColor.red;
            
            self.view.addSubview(activityIndicator);
        }

        if(activityIndicator.isAnimating) {
        
            activityIndicator.stopAnimating();
       
        } else {
         
            activityIndicator.startAnimating();
        
        }
        print("indicator added");
        
        return;
    }
}



