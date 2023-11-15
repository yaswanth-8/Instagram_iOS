//
//  HeaderViewModel.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import Foundation
import SwiftUI

class HeaderViewModel : ObservableObject {
    //To capture start minY value for calculations...
    @Published var startMinY : CGFloat = 0
    @Published var Offset : CGFloat = 0
    @Published var headerOffset : CGFloat = 0
    
    //it will be used for getting top and bottom offsets for header view
    @Published var topScrollOffset : CGFloat = 0
    @Published var bottomScrollOffset : CGFloat = 0
}
