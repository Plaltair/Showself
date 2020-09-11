//
//  ViewRouter.swift
//  Showself
//
//  Created by Pierluca Lippi on 13/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

import Foundation
import SwiftUI
import Combine

class ViewRouter: ObservableObject {
    
    @Published var currentView: TabType = .stories
    
}
