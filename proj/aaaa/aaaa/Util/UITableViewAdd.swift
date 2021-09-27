//
//  UITableViewAdd.swift
//  musicSheet
//
//  Created by 来源于网络 on 2019/8/23.
//  Copyright © 来源于网络   2300. All rights reserved.
//

import UIKit


extension UITableView{
    
    
    func register<T: CellReuse>(for cellNib: T.Type){
        
        register(UINib(nibName: cellNib.id, bundle: nil), forCellReuseIdentifier: cellNib.id)
        
    }

    
    
    
    
    func dequeue<T: CellReuse>(for cellNib: T.Type, ip indexPath: IndexPath) -> T{
        let cell = dequeueReusableCell(withIdentifier: cellNib.id, for: indexPath)
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.white
        cell.selectedBackgroundView = bgColorView
        return cell as! T
        
    }
    
    func cell<T: CellReuse>(_ type: T.Type, at index: Int) ->T{
        return cellForRow(at: IndexPath(row: index, section: 0)) as! T
    }
    
    func cell<T: CellReuse>(_ type: T.Type, one index: Int) ->T{
        return cellForRow(at: IndexPath(row: index, section: 1)) as! T
    }
    
    
    func cell<T: CellReuse>(_ type: T.Type, ip index: IndexPath) ->T{
        return cellForRow(at: index) as! T
    }
}





extension UICollectionViewLayout{
    
    
    func register<T: CellReuse>(decoration forNib: T.Type){
        register(UINib(nibName: forNib.id, bundle: nil), forDecorationViewOfKind: forNib.id)
    }
    
    
}







extension UICollectionView{
    
    func register<T: CellReuse>(cell forNib: T.Type){
        register(UINib(nibName: forNib.id, bundle: nil), forCellWithReuseIdentifier: forNib.id)
    }
    
    
    func dequeue<T: CellReuse>(cell forNib: T.Type, ip indexPath: IndexPath) -> T{
        
        return dequeueReusableCell(withReuseIdentifier: forNib.id, for: indexPath) as! T
    }
    
    
    
    func register<T: CellReuse>(header forNib: T.Type){
        register(UINib(nibName: forNib.id, bundle: nil), forSupplementaryViewOfKind: UICollectionReusableView.header, withReuseIdentifier: forNib.id)
           
    }
    
    
       
       
    func dequeue<T: CellReuse>(header forNib: T.Type, ip indexPath: IndexPath) -> T{
       
        return dequeueReusableSupplementaryView(ofKind: UICollectionReusableView.header, withReuseIdentifier: forNib.id, for: indexPath) as! T
    }

    func register<T: CellReuse>(footer forNib: T.Type){
        register(UINib(nibName: forNib.id, bundle: nil), forSupplementaryViewOfKind: UICollectionReusableView.footer, withReuseIdentifier: forNib.id)
           
    }
       
       
    func dequeue<T: CellReuse>(footer forNib: T.Type, ip indexPath: IndexPath) -> T{
       
        return dequeueReusableSupplementaryView(ofKind: UICollectionReusableView.footer, withReuseIdentifier: forNib.id, for: indexPath) as! T
    }
    
    
    
    func register<T: CellReuse>(top forNib: T.Type){
        register(UINib(nibName: forNib.id, bundle: nil), forSupplementaryViewOfKind: UICollectionReusableView.addTop, withReuseIdentifier: forNib.id)
           
    }
    
    
    func header<T: CellReuse>(register cls: T.Type){
        
        register(cls, forSupplementaryViewOfKind: UICollectionReusableView.header, withReuseIdentifier: cls.id)

    }
    
    
    func dequeue<T: CellReuse>(top forNib: T.Type, ip indexPath: IndexPath) -> T{
       
        return dequeueReusableSupplementaryView(ofKind: UICollectionReusableView.addTop, withReuseIdentifier: forNib.id, for: indexPath) as! T
    }
    
    
    
    func view<T: CellReuse>(top forNib: T.Type, ip indexPath: IndexPath) -> T {
        return supplementaryView(forElementKind: UICollectionReusableView.addTop, at: indexPath) as! T
    }
}





extension UIScrollView{
    var isScrolling: Bool{
        layer.animation(forKey: "bounds") != nil
    }
    
    var notScrolling: Bool{
        layer.animation(forKey: "bounds") == nil
    }
}






extension UICollectionView{
    func rectForRow(at indexPath: IndexPath) -> CGRect{
        var f = CGRect.zero
        if let position = layoutAttributesForItem(at: indexPath){
            f = position.frame
        }
        return f
    }
}
