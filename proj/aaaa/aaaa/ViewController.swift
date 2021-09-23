//
//  ViewController.swift
//  aaaa
//
//  Created by Jz D on 2021/9/23.
//

import UIKit
import RxSwift
import RxCocoa

class Cate: NSObject{
    
    @objc dynamic var nick = 51
    
    var k: String{
        "nick"
    }
}

class ViewController: UIViewController {
    let cat = Cate()
    
    let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cat.rx.observeWeakly(Int.self, cat.k).subscribe(onNext: {val in
            if let v = val{
                print(v)
            }
        }).disposed(by: bag)

        
        
        
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        cat.nick += 3
    }
}

