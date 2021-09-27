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

        // 两个闭包对象:
        // 可观察者， 被观察者
        // 观察者
        
        
        
        
        // 1, 创建序列
        //  final private class AnonymousObservable<Element>: Producer<Element>
        //  保存闭包 （ 持有事件 subscribeHandler ） -> 函数式编程思想
        
        
        
        let signal = Observable<String>.create { observer in
            
            // 3， 发送信号
            observer.onNext("哈哈")
            
            
            
            return Disposables.create()
        }
        
        
        
        // 2， 订阅信号
        
        // 背后是 AnonymousObserver
        
        /*
         
         final class AnonymousObserver<Element>: ObserverBase<Element>
         
         // 逃逸闭包
         init(_ eventHandler: @escaping EventHandler)
         */
        
        
        // 订阅完后，去销毁
        
        signal.subscribe { str in
            // _eventHandler
        } onError: { err in
            
        } onCompleted: {
            
        } onDisposed: {
            
        }

    }

}





