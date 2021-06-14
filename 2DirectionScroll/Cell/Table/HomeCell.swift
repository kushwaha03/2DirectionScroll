//
//  HomeCell.swift
//  2DirectionScroll
//
//  Created by Krishna Kushwaha on 14/06/21.
//

import UIKit

class HomeCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension HomeCell : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let homeCollnCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollnCell", for: indexPath) as!  HomeCollCell
        homeCollnCell.titleLbl.text = "Name: " + String(indexPath.row)
        
        
        return homeCollnCell
        
    }
    
    
}
extension HomeCell : UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: collectionView.frame.width/2, height: collectionView.frame.height-20)
    }
    
}
