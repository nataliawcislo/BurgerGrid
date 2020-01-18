//
//  ViewController.swift
//  BurgerGrid
//
//  Created by Natalia Wcisło on 1/6/20.
//  Copyright © 2020 Natalia Wcisło. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var GridView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let itemSize = UIScreen.main.bounds.width/2-2
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemSize, height: itemSize)

        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
         
        GridView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgerList.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 24.0
        cell.BurgerImage.image = burgerList[indexPath.item].image
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.image = burgerList[indexPath.item].image
        vc.name = burgerList[indexPath.item].name
        vc.price = burgerList[indexPath.item].price
        vc.index = indexPath.item
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
    



