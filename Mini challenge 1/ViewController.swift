//
//  ViewController.swift
//  Mini challenge 1
//
//  Created by Felyn Sumarta on 10/04/20.
//  Copyright © 2020 Felyn Sumarta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var categoryItems: [CategoryItem] = []

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        // Do any additional setup after loading the view.
    }

    func fetchData(){
           categoryItems.append(CategoryItem(categoryImage: "Work"))
           categoryItems.append(CategoryItem(categoryImage: "Sleep"))
           categoryItems.append(CategoryItem(categoryImage: "Hobby"))
           categoryItems.append(CategoryItem(categoryImage: "Household"))
           categoryItems.append(CategoryItem(categoryImage: "Meditate"))
           categoryItems.append(CategoryItem(categoryImage: "Add new activity"))

       }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryItems.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath)
                as! ImageCollectionViewCell
            
            let categoryItem = categoryItems[indexPath.row]

            cell.imgImage.image = UIImage(named:"\(categoryItem.categoryImage)")
            
            return cell

       }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: (IndexPath)) {
        if (indexPath.item == categoryItems.count-1){

            let addVC = storyboard?.instantiateViewController(identifier: "ThirdViewController")as? ThirdViewController
            addVC?.vc = self
            present(addVC!, animated: true)
            
        }else{
            let secondVC = storyboard?.instantiateViewController(identifier: "SecondViewController")as? SecondViewController
                secondVC?.vc = self
            secondVC?.fetchReminder(category: categoryItems[indexPath.row])
                present(secondVC!, animated: true)
            }
            
        
        
    }
        
   
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//            let destinationVC = segue.destination as? SecondViewController
//            destinationVC?.fetchReminder(category: sender as! CategoryItem )

      
        
    
    
    
       

}








