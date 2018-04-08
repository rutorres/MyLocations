//
//  Functions.swift
//  MyLocations
//
//  Created by Ruth Torres Castillo on 4/8/18.
//  Copyright © 2018 New Mexico State University. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
