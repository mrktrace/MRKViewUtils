//
//  MRKTVDatasource.swift
//  MRKViewUtls
//
//  Created by Marc Flores on 14/12/2019.
//  Copyright © 2019 MRKTrace. All rights reserved.
//

import UIKit

open class MRKTVDatasource<C:UITableViewCell, D:Any>: NSObject, UITableViewDataSource {
    
    public var data:[[D]]?
    
    public weak var tv: UITableView? {
        didSet{
            tv?.registerClassNib(C.self)
            tv?.dataSource = self
        }
    }
    
    //MARK : - UITableViewDataSource
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return data?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?[section].count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(C.self, for: indexPath)
        let d = data![indexPath.section][indexPath.row]
        representCell(tv:tableView, at: indexPath, with: d, in: cell)
        representCell(d, cell: cell)
        return cell
    }
    
    //MARK : - Override
    
    open func representCell(tv: UITableView, at index:IndexPath, with data:D, in cell:C) {
        
    }
    
    open func representCell( _ data:D, cell:C ) {
        
    }
}
