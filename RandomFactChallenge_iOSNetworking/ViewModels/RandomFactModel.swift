//
//  RandomFactModel.swift
//  RandomFactChallenge_iOSNetworking
//
//  Created by Jeffrey Sweeney on 11/13/21.
//

import Foundation

// MARK: RandomFactModel ViewModel
//       Sets initial message to draw a random fact. Once drawn, either a new random
//       fact is drawn, or in various error scenarios, a fun failure message is shown.
class RandomFactModel: ObservableObject {
    @Published var randomFact: String
    let urlStringPath = "http://numbersapi.com/random/trivia"
    
    init() {
        // Initially start with a greeting - no facts yet
        randomFact = "Hi! Click below for a random fact!"
    }
    
    // MARK: - Generate a new random fact
    func newRandomFact() {
        // Get the URL
        let url = URL(string: urlStringPath)
        
        // Guard against nil URL
        guard url != nil else {
            self.defaultFailureFact()
            return
        }
        
        // Get the URLRequest
        let request = URLRequest(url: url!)
        
        // Get the (singleton) URLSession
        let session = URLSession.shared
        
        // Define and start the task
        let task = session.dataTask(with: request) { (data, response, error) in
            // Guard against errors
            guard error == nil else {
                self.defaultFailureFact()
                return
            }
            
            // Guard against bad response
            let response = response as! HTTPURLResponse
            let status = response.statusCode
            guard (200...299).contains(status) else {
                self.defaultFailureFact()
                return
            }
            
            if let fact = String(data: data!, encoding: .utf8) {
                // Make sure randomFact is updated on main thread since it's 'Published'
                DispatchQueue.main.async {
                    self.randomFact = fact
                }
            } else {
                self.defaultFailureFact()
                return
            }
        }
        
        task.resume()
    }
    
    private func defaultFailureFact() {
        self.randomFact = "Fact: I can't retrieve a new fact right now! 😭"
    }
}
