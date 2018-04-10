//
//  Functions.swift
//  MyLocations
//
//  Created by Ruth Torres Castillo on 4/8/18.
//  Copyright © 2018 New Mexico State University. All rights reserved.
//

import Foundation

let applicationDocumentsDirectory: URL = {
    let paths = FileManager.default.urls(for:.documentDirectory, in: .userDomainMask)
    return paths[0]
}()

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}

let CoreDataSaveFailedNotification = Notification.Name(rawValue: "CoreDataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal error: \(error)")
    NotificationCenter.default.post(
        name: CoreDataSaveFailedNotification, object:nil)
}
