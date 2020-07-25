//
//  AppearanceViewController.swift
//  TipCalculator
//
//  Created by Jennifer Trinh on 7/8/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class AppearanceViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    let colors = [Teal, Pink, Green, Purple]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
