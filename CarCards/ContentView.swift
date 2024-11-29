//
//  ContentView.swift
//  CarCards
//
//  Created by MARCELO HENRRIQUE MORELLO MANZO on 02/10/24.
//

import Foundation

import SwiftUI

// Estrutura que representa um Carro
struct Car {
    let name: String      // Nome do carro
    let image: String     // Nome da imagem do carro
    let description: String // Descrição do carro
}

// Estrutura principal
struct ContentView: View {
    // Array de carros
    let cars = [
        Car(name: "astra", image: "astra", description: "Perfeito"),
        Car(name: "monza", image: "monza", description: "Reliquia"),
        Car(name: "fusion", image: "fusion", description: "Conforto"),
        Car(name: "porsche", image: "porsche", description: "Luxo")
    ]

    var body: some View {
        // Cria uma lista de cards para cada carro
        ScrollView {
            VStack {
                ForEach(cars, id: \.name) { car in
                    CarCard(car: car) // Chama a view do card
                }
            }
            .padding()
        }
    }
}

// Estrutura que representa um Card de Carro
struct CarCard: View {
    let car: Car

    var body: some View {
        VStack {
            Image(car.image) // Mostra a imagem do carro
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity) // faz a imagem ocupar 100% da largura da tela
                .frame(height: 200) // altura da imagem
                .cornerRadius(10)   // deixa os cantos redondos
                
            
            Text(car.name)       // Mostra o nome do carro
                .font(.title)
                .padding(.top, 10)
            
            Text(car.description) // Mostra a descrição do carro
                .font(.body)
                .padding(.bottom, 10)
        }
        .padding()
        .background(Color.white) // Define a cor de fundo do card
        .cornerRadius(10)
        .shadow(radius: 5)       // Adiciona sombra ao card
    }
}

