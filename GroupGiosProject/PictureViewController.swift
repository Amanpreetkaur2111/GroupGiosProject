//
//  PictureViewController.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    
    var ImageArray = [["S1","S2","S3","S4"],["D1","D2","D3","D4"],["C1","C2","C3","C4"],["ST","ST2","ST3","ST4"]]
    var ImageDelegate: RoomTypeTableViewController?
    
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        (mypic as! Picture).setImage(s: ImageArray[ImageDelegate!.RType])

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return ImageArray[ImageDelegate!.RType].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
    
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? Picture
        {
        
            
            
            
        cell.Images?.image = UIImage(named: ImageArray[ImageDelegate!.RType][indexPath.row])
            return cell
            
        }
        
        return UICollectionViewCell()
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
