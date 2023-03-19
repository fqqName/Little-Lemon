//
//  Final_project_Little_lemonApp.swift
//  Final project Little lemon
//
//  Created by Pascal on 18.03.23.
//

import SwiftUI

@main
struct Final_project_Little_lemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
