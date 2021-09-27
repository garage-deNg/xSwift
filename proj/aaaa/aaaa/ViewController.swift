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
    
    lazy var tb: UITableView = {
        let table = UITableView(frame: UIScreen.main.bounds)
        table.rowHeight = 50
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.id)
        return table
    }()
    
    
    //  SchedulerType, 调度者
    //  gcd timer
    lazy var timer: Observable<Int> = Observable<Int>.interval(DispatchTimeInterval.milliseconds(200), scheduler: MainScheduler.instance)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(tb)
        
        timer.subscribe(onNext: {val in
            print(val)
        }).disposed(by: bag)
        
        
    }

}





extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.id, for: indexPath)
        cel.textLabel?.text = "\(indexPath.row) . 宫"
        
        cel.textLabel?.textColor = UIColor.blue
        return cel
    }
    
    
}
