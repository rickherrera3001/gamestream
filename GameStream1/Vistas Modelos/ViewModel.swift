//
//  ViewModel.swift
//  GameStream1
//
//  Created by Ricardo Developer on 20/03/24.
//

import Foundation

class ViewModel:ObservableObject {
    
    @Published var gamesInfo = [Game]()
    
    
    init() {
        
        let url = URL(string: "https://gamestreamapi.herokuapp.com/api/games")!
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with:  request) { data, response, error in
            
            do{
                
                if let jsonData = data {
                    
                 print("tamaño del Json \(jsonData)")
                    
                  let decoData = try
                    JSONDecoder().decode([Game].self, from: jsonData )
                    
                    DispatchQueue.main.async {
                        
                        self.gamesInfo.append(contentsOf: decoData)
                        
                        
                        
                    }
                    
                }
                
                
            }catch{
              
               print("Error: \(error)")
                
            }
            
            
            
            
        }.resume()
        
        
        
        
    }
}
