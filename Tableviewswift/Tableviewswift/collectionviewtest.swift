//
//  collectionview.swift
//  Tableviewswift
//
//  Created by Perfection Developer on 19/10/16.
//  Copyright © 2016 Perfection Developer. All rights reserved.
//

import Foundation

import UIKit

class collectionviewtest : UIViewController ,UICollectionViewDelegate ,UICollectionViewDataSource
{
    @IBOutlet weak var objCollection: UICollectionView!
    var imagearray : NSMutableArray = []
    
    override func viewDidLoad()
    {
        imagearray = ["1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","10.png","11.png","12.png","1.png","2.png","3.png","4.png","12.png","10.png"]
    }
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    
    // MARK: - CollectionView
    //collectionview methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        return imagearray.count
    }
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = objCollection.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! collectionvucell
        
        cell.images.image =  UIImage(named: imagearray[indexPath.row] as! String) //"\(imagearray[indexPath.row])"
        cell.layer.borderWidth = 1
    
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }

    
}
