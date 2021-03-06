//
//  BackgroundThreadPrimitiveHotObservable.swift
//  Tests
//
//  Created by Krunoslav Zaher on 10/19/15.
//  Copyright © 2015 Krunoslav Zaher. All rights reserved.
//

import RxSwift
import XCTest
import Dispatch


// mock 0


final class BackgroundThreadPrimitiveHotObservable<Element: Equatable> : PrimitiveHotObservable<Element> {
    override func subscribe<Observer: ObserverType>(_ observer: Observer) -> Disposable where Observer.Element == Element {
        XCTAssertTrue(!DispatchQueue.isMain)
        return super.subscribe(observer)
    }
}
