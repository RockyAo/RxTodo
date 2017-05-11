//
//  BindableType.swift
//  RxTodo
//
//  Created by Rocky on 2017/5/11.
//  Copyright © 2017年 Rocky. All rights reserved.
//

import Foundation
import RxSwift


///遵守协议 实现视图模型，让viewController自动绑定视图模型
protocol BindableType {
    
    associatedtype ViewModelType
    
    var viewModel:ViewModelType! { get set }
    
    func bindViewModel()
}

extension BindableType where Self:UIViewController{

    mutating func bindViewModel(to model:Self.ViewModelType){
    
        viewModel = model
        
        loadViewIfNeeded()
        
        bindViewModel()
    }
}
