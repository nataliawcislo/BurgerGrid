//
//  DetailViewController.swift
//  BurgerGrid
//
//  Created by Natalia Wcisło on 09/01/2020.
//  Copyright © 2020 Natalia Wcisło. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    var image = UIImage()
    var name: String = ""
    var price: Double = 0.0
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        nameLabel.text! = name
        priceLabel.text! = String(format: "$%.2f", price)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        rightSwipe.direction = .left

        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        rightSwipe.direction = .left
            
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        if sender.state  == .ended {
            switch sender.direction {
            case .left:
                index = (index + 1) % burgerList.count
                animateImageView(fromRight: true)
            case .right:
                index = (index + burgerList.count - 1) % burgerList.count
                animateImageView(fromRight: false)
            default:
                break
            }
        }
    }
    
    private func animateImageView(fromRight: Bool) {
        let animationDuration: TimeInterval = 0.1
        
        CATransaction.begin()

        CATransaction.setAnimationDuration(animationDuration)
        
        let transition = CATransition()
        transition.type = CATransitionType.push
        
        if(fromRight) {
            transition.subtype = CATransitionSubtype.fromRight
        }
        
        imageView.layer.add(transition, forKey: kCATransition)
        nameLabel.layer.add(transition, forKey: kCATransition)
        priceLabel.layer.add(transition, forKey: kCATransition)
        
        image = burgerList[index].image
        name = burgerList[index].name
        price = burgerList[index].price
        imageView.image = image
        nameLabel.text! = name
        priceLabel.text! = String(format: "$%.2f", price)
        
        CATransaction.commit()
    }
    
    override func didReceiveMemoryWarning() {
        return didReceiveMemoryWarning()
    }
}
