//
//  ContentView.swift
//  financeEducation
//
//  Created by ana fragoso on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var selectedAlert: AlertMessage? = nil
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    var body: some View {
        
        // TODO LO RELACIONADO CON LA IMAGEN DE FONDO
        //Depth stack para colocar elementos uno encima d otro
        NavigationStack(){
            ZStack {
                CustomColors.myLightBlue.ignoresSafeArea()
                
                
                //TODO LO RELACIONADO CON LOS TEXTOS
                GeometryReader{ geometry in
                    VStack {
                        Text("¡Hola, Ruy!")
                            .font(.title)
                            .bold()
                            .foregroundColor(CustomColors.myDarkGrey)
                        
                        Text("¿Listo para seguir aprendiendo?")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(CustomColors.myDarkGrey)
                        
                        ZStack{
                                ScrollView {
                                    LazyVGrid(columns: columns, spacing: 20) {
                                        ForEach(categories, id: \.self) { category in
                                            NavigationLink(destination: DetailView(category: category.name)) {
                                                CategoryButton(category: category)
                                            }
                                        }
                                    }
                                    .padding()
                                    
                                }
                            
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                            
                        }, label: {
                            NavigationLink(destination: quizView()){
                                Text("Practicar")
                                    //.font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(CustomColors.myDarkBlue)
                                    .shadow(radius: 20)
                            }
                            
                            
                        })
                        Spacer()
                    }
                    
                    
                }
                
            }
        }
        }
    }



       

struct CategoryButton: View {
    let category: Category
    
    var body: some View {
        VStack {
            Image(systemName: category.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .foregroundColor(.white)
            Text(category.name)
                .foregroundColor(.white)
                .font(.headline)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(CustomColors.myDarkBlue)
        .cornerRadius(5)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView: View {
    let category: String
    
    var body: some View {
        VStack {
            Text("Más información sobre \(category)")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle(category)
    }
}

struct Category: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
}

let categories = [
    Category(name: "Salud Financiera", imageName: "heart.fill"),
    Category(name: "Inversión", imageName: "chart.bar.fill"),
    Category(name: "Tarjetas de Crédito", imageName: "creditcard.fill"),
    Category(name: "Tarjetas de débito", imageName: "list.bullet.rectangle.portrait.fill"),
    Category(name: "Ahorro", imageName: "banknote.fill"),
    Category(name: "Deudas", imageName: "arrow.triangle.2.circlepath.circle.fill"),
    Category(name: "Seguros", imageName: "shield.fill"),
    Category(name: "Impuestos", imageName: "doc.text.fill"),
    Category(name: "Capital", imageName: "dollarsign.circle.fill"),
    Category(name: "Jubilación", imageName: "hourglass.bottomhalf.fill"),
    Category(name: "Ingresos Pasivos", imageName: "arrow.up.right.circle.fill"),
    Category(name: "Gastos", imageName: "arrow.down.left.circle.fill"),
    Category(name: "Bitcoins", imageName: "bitcoinsign.square.fill"),
    Category(name: "Interés", imageName: "figure.stairs"),
    Category(name: "Negocios propios", imageName: "storefront.fill")
    //Category
    
]

    
    
    struct AlertMessage: Identifiable {
        let id: Int
        let title: String
        let message: String
    }
 

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

