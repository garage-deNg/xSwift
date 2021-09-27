//
//  ViewController.swift
//  aaaa
//
//  Created by Jz D on 2021/9/23.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {
    
    
    let bag = DisposeBag()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        
        // 1, 创建序列
        let signal = Observable<String>.create { observer in
            
            // 3， 发送信号
            observer.onNext("哈哈")
            
            
            
            return Disposables.create()
        }
        
        
        
        // 2， 订阅信号
    }

}





