//
//  Observable.swift
//  RxSwift
//
//  Created by Krunoslav Zaher on 2/8/15.
//  Copyright © 2015 Krunoslav Zaher. All rights reserved.
//

/// A type-erased `ObservableType`. 
///
/// It represents a push style sequence.
public class Observable<Element> : ObservableType {
    init() {
#if TRACE_RESOURCES
        // 资源统计
        
        // 可发现内存问题
        
        // 避免内存泄漏
        _ = Resources.incrementTotal()
        
        
        // 与埋点，类似
#endif
    }
    
    public func subscribe<Observer: ObserverType>(_ observer: Observer) -> Disposable where Observer.Element == Element {
        rxAbstractMethod()
    }
    
    
    
    // LG 的说
    // 为了强转
    // 便于统一
    
    
    // 没做啥事
    public func asObservable() -> Observable<Element> { self }
    
    
    
    
    
    
    
    
    deinit {
#if TRACE_RESOURCES
        _ = Resources.decrementTotal()
#endif
    }
}

