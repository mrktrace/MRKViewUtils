//
//  MRKTVRepresenter.swift
//  MRKViewUtls
//
//  Created by Marc Flores on 14/12/2019.
//  Copyright © 2019 MRKTrace. All rights reserved.
//

import UIKit

open class MRKTVRepresenter<C,D> : NSObject where C : UITableViewCell , D : Any {

    public func registerRepresenter(_ tv: UITableView) {
        tv.registerClassNib(C.self)
    }
    
    //MARK : - Protocol
    
    public func reuseCellFor(tv: UITableView, at index: IndexPath, with data: D) -> C {
        let cell = tv.dequeueReusableCell(C.self, for: index)
        representCell(tv: tv, at: index, with: data, in: cell)
        representCell(data, cell: cell)
        return cell
    }
    
    //MARK : - Override
    
    open func representCell(tv:UITableView, at index:IndexPath, with data:D, in cell:C) {
        
    }
    
    open func representCell( _ data:D, cell:C ) {
        
    }
}
