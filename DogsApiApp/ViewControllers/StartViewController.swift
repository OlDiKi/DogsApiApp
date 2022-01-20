//
//  ViewController.swift
//  DogsApiApp
//
//  Created by Дмитрий Олейнер on 15.01.2022.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "paws1.png")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
    }
    
}

