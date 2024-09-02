//
//  MyProjApp.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import SwiftUI
import SwiftData

@main
struct MyProjApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            let repository = CounterRepositoryImpl()
            let useCase = CounterUseCaseImpl(repository: repository)
            let viewModel = CounterViewModel(useCase: useCase)
            CounterView(viewModel: viewModel)
        }
    }
}
