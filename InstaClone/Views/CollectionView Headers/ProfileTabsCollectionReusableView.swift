//
//  ProfileTabsCollectionReusableView.swift
//  InstaClone
//
//  Created by Denis Sushkov on 01.09.2020.
//  Copyright © 2020 Denis Sushkov. All rights reserved.
//

import UIKit

class ProfileTabsCollectionReusableView: UICollectionReusableView {
    static let identifier = "ProfileTabsCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
