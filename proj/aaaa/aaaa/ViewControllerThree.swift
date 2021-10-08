//
//  ViewController.swift
//  aaaa
//
//  Created by Jz D on 2021/9/23.
//

import UIKit
import RxSwift
import RxCocoa


class ViewControllerThree: UIViewController {
    
    
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
        
        //
        // timeOp()
        
        //
        
        tb.rx.itemSelected.subscribe(onNext: { [ unowned self] ip in
            switch ip.row{
            case 0:
                self.navigationController?.pushViewController(ViewController(), animated: true)
            case 1:
                self.navigationController?.pushViewController(ViewControllerTwo(), animated: true)
            default:
                ()
            }
            
            
        }).disposed(by: bag)
    }

    
    
    func timeOp(){
        timer.subscribe(onNext: {val in
            print(val)
        }).disposed(by: bag)
    }
}





extension ViewControllerThree: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.id, for: indexPath)
        var name = ""
        switch indexPath.row{
        case 0:
            name = String(describing: ViewController.self)
        case 1:
            name = String(describing: ViewControllerTwo.self)
        default:()
        }
        cel.textLabel?.text = "\(indexPath.row) . \(name)"
        cel.textLabel?.textColor = UIColor.blue
        return cel
    }
    
    
}



