//
//  MRKCVRepresenter.swift
//  MRKViewUtls
//
//  Created by Marc Flores on 14/12/2019.
//  Copyright © 2019 MRKTrace. All rights reserved.
//

import UIKit

open class MRKCVRepresenter<C,D> : NSObject where C : UICollectionViewCell , D : Any {

    public func registerRepresenter(_ cv: UICollectionView) {
        cv.registerClassNib(C.self)
    }
    
    //MARK : - Protocol
    
    public func reuseCellFor(cv: UICollectionView, at index: IndexPath, with data: D) -> C {
        let cell = cv.dequeueReusableCell(C.self, for: index)
        representCell(cv: cv, at: index, with: data, in: cell)
        representCell(data, cell: cell)
        return cell
    }
    
    //MARK : - Override
    
    open func representCell(cv: UICollectionView, at index:IndexPath, with data:D, in cell:C) {
        
    }
    
    open func representCell( _ data:D, cell:C ) {
        
    }
}
