//
//  ContentView.swift
//  financeEducation
//
//  Created by ana fragoso on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
// TODO LO RELACIONADO CON LA IMAGEN DE FONDO
        //Depth stack para colocar elementos uno encima d otro
        ZStack {
            CustomColors.myDarkBlue.ignoresSafeArea()
            
//TODO LO RELACIONADO CON LOS TEXTOS
            GeometryReader{ geometry in
                VStack {
                    //vertical stack
                    Text("¡Hola, Ana!")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 69)
                        
                    
                    Text("¿Lista para seguir aprendiendo?")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                    
                }
                .padding(.top, 30)
                .padding(.leading, 25)
            
            }
//BOTÓN
            GeometryReader{ geometry in
                VStack{
                    Spacer()
                    .frame(height: geometry.size.height * 0.8)
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        print("Aquí debería mandarnos al quizz")
                        
                    }, label: {
                        Text("Practicar")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(CustomColors.myLightBlue) //cambiar por un hex
                            
                            .shadow(radius: 20)
                           
                        
                    })
                }
                
            }
            
            
            .padding()
        }
    }
}

//SEGUNDA PANTALLA


#Preview {
    ContentView()
}
