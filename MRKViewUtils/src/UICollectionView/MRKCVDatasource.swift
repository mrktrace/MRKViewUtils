//
//  MRKCVDatasource.swift
//  MRKViewUtls
//
//  Created by Marc Flores on 14/12/2019.
//  Copyright © 2019 MRKTrace. All rights reserved.
//

import UIKit

open class MRKCVDatasource<C:UICollectionViewCell, D:Any>: NSObject, UICollectionViewDataSource {
    
    public var data:[[D]]?
    
    public weak var cv: UICollectionView? {
        didSet{
            cv?.registerClassNib(C.self)
            cv?.dataSource = self
        }
    }
    
    //MARK : - UICollectionViewDataSource
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data?.count ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?[section].count ?? 0
    }
    
    open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(C.self, for: indexPath)
        let d = data![indexPath.section][indexPath.row]
        representCell(cv:collectionView, at: indexPath, with: d, in: cell)
        representCell(d, cell: cell)
        return cell
    }
    
    //MARK : - Override
    
    open func representCell(cv: UICollectionView, at index:IndexPath, with data:D, in cell:C) {
        
    }
    
    open func representCell( _ data:D, cell:C ) {
        
    }
}
