import UIKit

let stringToSave = "The string I want to save"
let path = FileManager.default.urls(for: .documentDirectory,
                                    in: .userDomainMask)[0].appendingPathComponent("myFile")

if let stringData = stringToSave.data(using: .utf8) {
    try? stringData.write(to: path)
}

// Test reading data
do {
    let data = try Data(contentsOf: path)
    let stringFromData = String(data: data,
                                encoding: .utf8)
    
    print(stringFromData)
} catch {
    print("error")
}
