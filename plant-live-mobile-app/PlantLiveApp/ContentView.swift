
import SwiftUI

struct ContentView: View {
    
    var body: some View {

        TabView{
            
            PlantListScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Text("Plant")
                .tabItem {
                    Image(systemName: "leaf.arrow.triangle.circlepath")
                    Text("Plant")
                }
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Alarm")
                }
            
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "brain.head.profile")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
