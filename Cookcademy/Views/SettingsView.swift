//
//  SettingdView.swift
//  Cookcademy
//
//  Created by Tim P. on 14/04/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var hideOptionalSteps: Bool = false
    @State private var listBackgroundColor = AppColor.background
    @State private var listTextColor = AppColor.foreground
    
    var body: some View {
        NavigationView {
            Form {
                ColorPicker("Background Color", selection: $listBackgroundColor)
                    .padding()
                    .listRowBackground(listBackgroundColor)
                ColorPicker("Text Color", selection: $listTextColor)
                    .padding()
                    .listRowBackground(listBackgroundColor)
                Toggle("Hide Optional Steps", isOn: $hideOptionalSteps)
                    .padding()
                    .listRowBackground(listBackgroundColor)
            }
            .foregroundColor(listTextColor)
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
