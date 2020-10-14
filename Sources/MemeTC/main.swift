import Foundation
import ArgumentParser

let leetDict: [String: String] = [
                "a":"@",
                "c":"(",
                "e":"3",
                "l":"1",
                "o":"0",
                "s":"5",
                ]

struct MemeTC: ParsableCommand {
    
    @Argument(help: "Text to style")
    var phrase: String
    
    @Flag(help: "Spongebob Style")
    var s = false
    
    @Flag(help: "Leet Style")
    var l = false
    
    @Flag(help: "sPaced-out/Padded Style")
    var p = false

    mutating func run() throws {
        
        if s == true { //Spongebob Style: Prints 3 styled texts
            print("///////////////")
            print("TAKE YOUR PICK:")
            print(
                phrase.map({ String($0) })
                .map({ Bool.random() ? ($0 as String).uppercased() : ($0 as String).lowercased() })
                .joined(separator: "")
            )
            print(
                phrase.map({ String($0) })
                .map({ Bool.random() ? ($0 as String).uppercased() : ($0 as String).lowercased() })
                .joined(separator: "")
            )
            print(
                phrase.map({ String($0) })
                .map({ Bool.random() ? ($0 as String).uppercased() : ($0 as String).lowercased() })
                .joined(separator: "")
            )
            print("///////////////")
        }
        
        if l == true { //Leet Style: Prints styled text
            print("///////////////")
            print(
                phrase.map( {String($0) })
                .map( { if let r = leetDict[$0] { return r } else { return $0 } } )
                .joined(separator: "")
            )
            print("///////////////")
        }
        
        if p == true { //Padded Style: Prints styled text
            print("///////////////")
            print(phrase.map( {String($0) }).joined(separator: " "))
            print("///////////////")
            
        }
    }
}

MemeTC.main()
