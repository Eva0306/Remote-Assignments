//
//  ViewController.swift
//  Week4 Assignment_Station
//
//  Created by 楊芮瑊 on 2024/7/10.
//

import UIKit

struct Station: Decodable {
    let stationID: String
    let stationName: String
    let stationAddress: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getStationInfo()
    }

    
    func getStationInfo() {
        
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data {
                let decoder = JSONDecoder()
                do {
                    let station = try decoder.decode(Station.self, from: data)
                    DispatchQueue.main.async {
                                    self.stationIDLabel.text = station.stationID
                                    self.stationNameLabel.text = station.stationName
                                    self.addressLabel.text = station.stationAddress
                                }
                } catch {
                    print("Failed to decode data: \(error)")
                }
            }
            
            if let error = error {
                print("Failed to fetch data: \(error)")
                return
            }
        }
        task.resume()
    }
}



