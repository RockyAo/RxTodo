//
//  TasksViewController.swift
//  RxTodo
//
//  Created by Rocky on 2017/5/11.
//  Copyright © 2017年 Rocky. All rights reserved.
//

import UIKit
import RxSwift

class TasksViewController: UIViewController , BindableType{

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var tabbleView: UITableView!
    @IBOutlet weak var newTaskButton: UIBarButtonItem!
    
    var viewModel: TasksViewModel!
    
    let disposeBag = DisposeBag()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func bindViewModel() {
        
    }

}
