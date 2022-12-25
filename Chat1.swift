//
//  Chat1.swift
//  Mine_Project2
//
//  Created by نوف بخيت الغامدي on 21/05/1444 AH.
//

import Foundation


func getBotResponse(message: String) -> String {
let tempMessage = message.lowercased()

if tempMessage.contains("hello") {
    return "Hey there!"
    
}else if tempMessage.contains("I’m learning Swift and faced some problem") {
    return "Ok!"
} else if tempMessage.contains("can you help me in this field?") {
    return "Of course! Send me the problem"
} else {
    return "OK!"
}
}
