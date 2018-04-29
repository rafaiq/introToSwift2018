//
//  Message.swift
//  Homework3_RRA
//
//  Created by Rafael Rodriguez on 4/26/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation

enum MessageState: String {
    case pending = "Pending"
    case sent = "Sent"
    case failed = "Failed"
}

struct Message {
    var fromName: String
    var body: String
    var state: MessageState
}

extension Message {
    
    
    static var defaultData: [Message] {
        var message = [Message]()
        
        var names = ["Maria",
                     "Antonio",
                     "Ricardo",
                     "Jessica",
                     "Alex"]
        
        var messagebodies = ["We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul.",
                             "Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde.",
                             "I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home.",
                             "Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula.",
                             "Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana."]
        
        var messagestates = [MessageState.pending,
        MessageState.sent,
        MessageState.failed,
        MessageState.pending,
        MessageState.sent]
        
        for i in 0..<5 {
            message.append(Message(fromName: names[i], body: messagebodies[i], state: messagestates[i]))
        }

        return message
    }
}
