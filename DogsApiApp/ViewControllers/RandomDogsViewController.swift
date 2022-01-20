//
//  RandomDogs.swift
//  DogsApiApp
//
//  Created by Дмитрий Олейнер on 20.01.2022.
//

import UIKit

class RandomDogsViewController: UIViewController {
   
    // MARK: - IBOutlets
    @IBOutlet weak var randomDogImage: UIImageView!

    override func viewDidLoad() {
        setBackground()
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        NetworkManager.shared.fetchImage(from: Link.dogsApi.rawValue) { image in
            self.randomDogImage.image = image
        }
    }

func setBackground() {
    let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "paws1" )
    backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
   
}
