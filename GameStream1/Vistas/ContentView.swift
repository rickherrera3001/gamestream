//
//  ContentView.swift
//  GameStream
//
//  Created by Ricardo Developer on 12/03/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                
                Spacer()
                
                Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
                
                VStack{
                    
                    
                    Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250).padding( .bottom , 42)
                    
                    InicioYRegistroView()
                    
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct InicioYRegistroView:View {
    
    
    struct RegistroView: View {
        
        @State var correo = ""
        @State var contraseña = ""
        @State var confirmarContraseña = ""
        
        var body: some View {
            
         
          ScrollView {
              
              
              VStack(alignment: .center) {
                  
                  Text("Elige una foto de perfil")
                      .fontWeight(.bold)
                      .foregroundColor(.white)
                  
                  
                  Text("Puedes cambiar o elergirla mas adelante")
                      .font(.footnote)
                      .fontWeight(.light)
                      .foregroundColor(.gray)
                      .padding(.bottom)
                  
                  Button(action: tomarFoto, label: {
                     
                    
                      
                      ZStack {
                          Image("perfilEjemplo")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(width: 80, height: 80)
                          
                          Image(systemName: "camera").foregroundColor(.white)
                      }
                  }).padding(.bottom)
                      
                  
              }
              
              
              
              ScrollView {
                  
                  VStack(alignment: .leading) {
                        
                      
                        Text("Correo electrónico*")
                          .foregroundColor(Color("Dark-Cian"))
                        
                      
                        ZStack(alignment: .leading){
                            
                            
                            if correo.isEmpty{
                                
                                Text("ejemplo@gmail.com")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    .frame(width: 300, alignment:.leading)
                                    
                                
                            }
                            TextField("", text: $correo)
                                .foregroundColor(.white)
                            
                        }
                        
                        Divider()
                          .frame( height: 1)
                          .background(Color("Dark-Cian"))
                          .padding(.bottom)
                      
                      
                      Text ("contraseña")
                          .foregroundColor(.white)
                      
                      ZStack(alignment: .leading){
                          
                          if contraseña.isEmpty{
                              Text("Escribe tu contraseña")
                                  .font(.caption)
                                  .foregroundColor(Color(red: 174/255, green: 177/255, blue: 185/255, opacity: 1.0))
                              
                          }
                          
                          SecureField("", text: $contraseña)
                              .foregroundColor(.white)
                      }
                      
                      Divider()
                          .frame(height: 1)
                          .background(Color("Dark-Cian"))
                        
                        
                        Text("Confirmar contraseña")
                          .foregroundColor(.white)
                        
                        
                        ZStack(alignment:.leading){
                            
                            
                            if contraseña.isEmpty{
                                
                                Text("Vuelve a escribir tu Contraseña").font(.caption).foregroundColor(.gray)
                            }
                            SecureField("", text: $confirmarContraseña).foregroundColor(.white)
                                
                        }
                        
                        Divider().frame( height: 1).background(Color("Dark-Cian")).padding(.bottom)
                        
                        HStack {
                            Spacer()
                            Button(action: {
                                // codigo para cuando se presiona olvidaste contraseña
                            }, label: {
                                //Text("¿Olvidaste tu contraseña?").font(.footnote).frame(width: 300, alignment: .trailing).foregroundColor(Color("Dark-Cian")).padding(.bottom)
                        })
                            
                        }

                        
                        Button(action: registrate) {
                            Text("REGISTRATE")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                                .overlay(RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(Color("Dark-Cian"), lineWidth: 1.0).shadow(color:.white, radius: 6))
                      
                        }
                        
                        .padding(.bottom)
                        
                        Spacer(minLength: 60)
                        Text("Inicia Sesión con redes sociales").frame( maxWidth: .infinity,  alignment: .center).foregroundColor(.white)
                        
                        HStack {
                            
                        
                            Button(action: {print("Inicio de sesión con Facebook")}) {
                                Text("Facebook").foregroundColor(.white)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .frame(width: 150)
                                    .background(Color(red: 0.14, green: 0.22, blue: 0.36))
                                    .clipShape(RoundedRectangle(cornerRadius: 4.0))
                                    .cornerRadius(8)
                                    
                            }
                            
                            .padding()
                            
                            Button(action: {print("Inicio de sesión con Twitter")}) {
                                Text("Twitter").foregroundColor(.white)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .frame(width: 150)
                                    .background(Color(red: 0.14, green: 0.22, blue: 0.36))
                                    .clipShape(RoundedRectangle(cornerRadius: 4.0))
                                    .cornerRadius(8)
                                
                            } .padding()
                          
                            
                            
                            
                        } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        
                    }
                     
                  .padding(.horizontal, 77.0)
                  
              }
            }
            
            
            
            Text("Soy la vista de registro")
        }
        func iniciarSesion() {
            print("Estoy iniciando sesion")
        }
       
    }
    @State var tipoInicioSesion = true
    
    var body: some View {
        
        VStack{
            HStack {
                
                Spacer()
                
                Button("INICIA SESIÓN"){
                    
                    tipoInicioSesion = true
                    
                    print("Pantalla inicio sesion")
                }
                
                .foregroundColor(tipoInicioSesion ? .white : .gray)
                
                Spacer()
                
                Button("REGÌSTRATE"){
                    
                    tipoInicioSesion = false
                    
                    print("Pantalla de registro")
                    
                }
                
                .foregroundColor(tipoInicioSesion ? .gray : .white)
                
                Spacer()
            }
            
            Spacer(minLength: 42)
            
            if tipoInicioSesion == true {
                
                InicioSesionView()
                
            }else{
                
                RegistroView()
                
            }
        }
    }
}

struct InicioSesionView: View {
    @State var correo = ""
    @State var contraseña = ""
    @State var isPantallaHomeActive = false
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment:.leading) {
                
                Text("Correo electrónico").foregroundColor(Color("Dark-Cian"))
                
                ZStack(alignment:.leading){
                    
                    
                    if correo.isEmpty{
                        
                        Text("ejemplo@gmail.com").font(.caption).foregroundColor(.gray)
                    }
                    TextField("", text: $correo)
                        .foregroundColor(.white)
                    
                }
                
                Divider().frame( height: 1).background(Color("Dark-Cian")).padding(.bottom)
                
                
                Text("Contraseña").foregroundColor(.white)
                
                
                ZStack(alignment:.leading){
                    
                    
                    if contraseña.isEmpty{
                        
                        Text("Escribe tu Contraseña").font(.caption).foregroundColor(.gray)
                    }
                    SecureField("", text: $contraseña).foregroundColor(.white)
                }
                
                Divider().frame( height: 1).background(Color("Dark-Cian")).padding(.bottom)
                
                HStack {
                    Spacer()
                    Button(action: {
                        // codigo para cuando se presiona olvidaste contraseña
                    }, label: {
                        Text("¿Olvidaste tu contraseña?").font(.footnote).frame(width: 300, alignment: .trailing).foregroundColor(Color("Dark-Cian")).padding(.bottom)
                })
                }

                
                Button(action: iniciarSesion) {
                    Text("INICIAR SESIÓN")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color("Dark-Cian"), lineWidth: 1.0).shadow(color:.white, radius: 6))
                
              
                }
                
                .padding(.bottom)
                
                Spacer(minLength: 60)
                Text("Inicia Sesión con redes sociales")
                    .frame( maxWidth: .infinity,  alignment: .center)
                    .foregroundColor(.white)
                
                HStack {
                    
                
                   Button(action: {print("Inicio de sesión con Facebook")}) {
                        Text("Facebook").foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 3.0)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color("Blue-Gray"))
                            .clipShape(RoundedRectangle(cornerRadius: 4.0))
                    
                    
                    
                    
                            
                    }
                    
                    .padding()
                    
                    Button(action: {print("Inicio de sesión con Twitter")}) {
                        Text("Twitter").foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 3.0)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color("Blue-Gray"))
                            .clipShape(RoundedRectangle(cornerRadius: 4.0))
                        
                    } .padding()
                  
                    
                } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
            } .padding(.horizontal, 77.0)
            
            NavigationLink(
              destination: Home(),
              isActive: $isPantallaHomeActive,
              label: {
                  EmptyView()
              })
        }
    }
    
    func iniciarSesion() {
        print("Estoy iniciando sesion")
        isPantallaHomeActive = true
    }
}

func tomarFoto() {
    print("Voy a tomar fotografia de perfil")
}

func registrate () {
    print("Te registraste")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        Image("pantalla2").resizable()
    }
}
