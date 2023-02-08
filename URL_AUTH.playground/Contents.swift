import UIKit


var url = URL(string: "https://rebrickable.com/api/v3/lego/sets/10312-1/")
var requests = URLRequest(url: url!)
var key = ProcessInfo.processInfo.environment["KEY"]

requests.setValue("application/json", forHTTPHeaderField: "Accept")
requests.setValue("key " + key!, forHTTPHeaderField: "Authorization")


if ((url) != nil){
    URLSession.shared.dataTask(with: requests){ data, response, error in
        if (data != nil){
            var jsonStr = String(data: data!, encoding: .utf8)!
            print(jsonStr)
        }
    }.resume()
}


