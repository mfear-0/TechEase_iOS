//
//  Homepage.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/30/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var moveToDashboard: Bool = false
}

struct Homepage: View {
    
    @EnvironmentObject var appState: AppState
    @State var isView1Active: Bool = false
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.green
    }
    
    var body: some View {
        NavigationView{
            VStack(){
                
                /*
                 
                Arica: This is the welcome title at the top of the screen.
                 
                 The reason the title text is in the HStack is because the Spacers seem to directly control the placement of the title. A VStack automatically centers the text, but I don't necessarily want to rely on that. Using the .multilineTextAlignment property has no effect on it, which is a bit concerning to me. That is why the title text is in an HStack (so we can directly control the placement of the title).
                 
                 If we want to change the placement of the title later, say, to the left, we can take out one Spacer and it works. Not doing it this way means we would not be able to do that.
                 
                 For any screen that does not use a title text like this, we do not need to use an HStack.
                 
                */
                
                HStack {
                    Spacer()
                    Text("Welcome!")
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                    Spacer()
                }
                // Arica: This padding is necessary for the left and right sides of the instructional text.
                .padding(10)
                // Arica: This provides a bit more space above and below the instructional text.
                .padding(.top, 20)
                .padding(.bottom, 10)
                    
                /*
                
                Arica: This is the text that explains to the users what they can do on this screen.
                 
                FUTURE NOTE TO MYSELF:
                Body text on the screens should use the ".title3" font size. Captions for photos should use the ".body" font size.
                 
                */
                
                
                Text("Tap a button to access the tutorials or the settings. If you need help, tap the help button in the bottom right corner.")
                    .foregroundColor(Color("Black"))
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                /*
                
                Arica: These are the buttons that navigate to the tutorials and to the settings.
                 
                */
                
                NavigationLink(
                    destination: TechEaseTutorialList()){
                    CustomButton(icon: "book", label: "Start Tutorials")
                        .padding()
                }
                .isDetailLink(false)
                
                NavigationLink(
                    destination: SettingsScreen(), isActive: $isView1Active){
                    CustomButton(icon: "gearshape", label: "Settings")
                        .padding()
                }
                .isDetailLink(false)
                Spacer()
                
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("TechEase", displayMode: .inline)
            .onReceive(self.appState.$moveToDashboard) { moveToDashboard in
                if moveToDashboard {
                    print("Move to dashboard: \(moveToDashboard)")
                    self.isView1Active = false
                    self.appState.moveToDashboard = false
                }
            }
        }
    }
}


struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
            .environmentObject(AppState())
    }
}
