//
//  DetailViewController.swift
//  BurgerGrid
//
//  Created by Natalia Wcisło on 09/01/2020.
//  Copyright © 2020 Natalia Wcisło. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{

    @IBOutlet weak var DLabel: UILabel!
    @IBOutlet weak var DImage: UIImageView!
    
    var image = UIImage()
    var name = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DImage.image = image
        DLabel.text! = name
    }
    
    override func didReceiveMemoryWarning() {
        return didReceiveMemoryWarning()
    }

}
