import SwiftUI

struct BlackBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.black)
            .foregroundColor(.white) // Define a cor do texto como branca
    }
}
