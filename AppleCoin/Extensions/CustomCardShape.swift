//
//  CustomCardShape.swift
//  AppleCoin
//
//  Created by Horacio Mota on 08/10/2023.
//

import SwiftUI

struct CustomCardShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY + 20))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY )) // Linha do topo
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // Linha da direita
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // Linha inferior
        path.closeSubpath()
        
        // Inclinação para baixo no canto superior esquerdo
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX + 30, y: rect.minY + 30)) // Linha inclinada para baixo
        
        // Inclinação para cima no canto superior direito
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - 30, y: rect.minY + 30)) // Linha inclinada para cima
        
        return path
    }
}
