//
//  SettingsView.swift
//  Fructus
//
//  Created by Matt X on 4/8/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fructus",
                                          labelImage: "info.circle")
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggling the switch below. That way it starts the onboarding process, and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(uiColor: .tertiarySystemBackground)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 8,
                                                     style: .continuous)
                                )
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization",
                                          labelImage: "paintbrush")
                    }
                    
                    // MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Matt Wurl")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website",
                                        linkLabel: "SwiftUI Masterclass",
                                        linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter",
                                        linkLabel: "@mattwurl",
                                        linkDestination: "twitter.com/mattwurl")
                        SettingsRowView(name: "SwiftUI", content: "SwiftUI 3")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    } label: {
                        SettingsLabelView(labelText: "Application",
                                          labelImage: "apps.iphone")
                    }
                }
                .navigationTitle("Settings")
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
