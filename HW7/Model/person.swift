//
//  person.swift
//  HW7
//
//  Created by Dmitry Tokarev on 03.11.2020.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    var personDetails: String {
        "\(email) \(phoneNumber)"
    }
    var detailArray: [String] {
        ["📨 \(email)", "☎️ \(phoneNumber)"]
    }
    
    static func getPersonList() -> [Person] {
        let dataManager = DataManager()
        var somePerson: [Person] = []
        for _ in 1...dataManager.name.count {
            let person = Person(name: dataManager.name.popFirst() ?? "",
                             surname: dataManager.surname.popFirst() ?? "",
                             email: dataManager.email.popFirst() ?? "",
                             phoneNumber: dataManager.phoneNumber.popFirst() ?? "")
            somePerson.append(person)
        }
        return somePerson
    }
}

let personData = Person.getPersonList()
