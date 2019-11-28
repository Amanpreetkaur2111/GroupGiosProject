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
    
    var currIndex = -1
    @IBOutlet var coll_View: UICollectionView!
    var ImageArray = [["S1","S2","S3","S4"],["D1","D2","D3","D4"],["C1","C2","C3","C4"],["ST","ST2","ST3","ST4"]]
    
    var Price = [["$100 Per day","$120 Per day","$150 Per day","$130 Per day"],["$140 Per day","$150 Per day","$160 Per day","$170 Per day"],["$170 Per day","$165 Per day","$180 Per day","$185 Per day"],["$190 Per day","$210 Per day","$195 Per day","$200 Per day"]]
    
    var ImageDelegate: RoomTypeTableViewController?
    var cuurentImageName = ""
   
    
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
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let RoomView = segue.destination as? RoomDetailViewController
        {
            RoomView.RoomDelegate = self
            
            if let pic = sender as? Picture
            {
               
            let index = coll_View.indexPath(for: pic)?.row
            currIndex = index!
            cuurentImageName = ImageArray[ImageDelegate!.RType][index!]
            }
        }
        
        
       //back let index = view.
    }
}
