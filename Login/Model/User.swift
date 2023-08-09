//
//  User.swift
//  Login
//
//  Created by Anton Akhmedzyanov on 09.08.2023.
//

import Foundation

struct User {
    let login: String
    let password: Int
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let proffesion: String
    let aboutMe: String
}

extension User {
    static func getPerson() -> User {
        User(login: "Anton",
             password: 1,
             person: Person(name: "Anton",
                            surname: "Akhmedzyanov",
                            age: 34,
                            proffesion: "Head of Sales Department",
                            aboutMe: "I was born in Tashkent. In 2011 I graduated from the University of World Languages. Now I live in Moscow region. I work in the logistics industry. My hobby is to learn IOS development.")
        )
    }
}





