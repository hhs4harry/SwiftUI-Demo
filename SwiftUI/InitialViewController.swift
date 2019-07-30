//
//  InitialViewController.swift
//  SwiftUI
//
//  Created by Harry on 15/07/19.
//  Copyright © 2019 |x|. All rights reserved.
//

import SwiftUI
import UIKit

struct InitialViewController : UIViewController {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

#if DEBUG
struct InitialViewController_Previews : PreviewProvider {
    static var previews: some View {
        InitialViewController()
    }
}
#endif
