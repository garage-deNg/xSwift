//
//  CellAdd.swift
//  musicSheet
//
//  Created by 来源于网络 on 2019/8/21.
//  Copyright © 来源于网络   2300. All rights reserved.
//

import UIKit


protocol CellReuse: AnyObject {
    static var id: String {get}
    
    
}



extension UITableViewCell: CellReuse{
    static var id: String{
        return String(describing: self)
        
    }
    
    
    static let placeHolder = UITableViewCell()

}



extension UICollectionReusableView: CellReuse{
    static var id :String {
        String(describing: self)
    }
}
    
extension UICollectionReusableView{
    static let header = "UICollectionElementKindSectionHeader"
    
    static let footer = "UICollectionElementKindSectionFooter"
    
    static let addTop = "addTop"
    
    static let placeHolder = UICollectionReusableView()
}


extension UICollectionViewCell{
    
    static let place = UICollectionViewCell()
}
