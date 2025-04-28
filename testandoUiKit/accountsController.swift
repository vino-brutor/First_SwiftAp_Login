//
//  accountsController.swift
//  testandoUiKit
//
//  Created by Vítor Bruno on 26/04/25.
//

import Foundation



struct Account:Codable {
    let fullname: String
    let email: String
    let password: String
    let dateOfBirth: Date
}

struct AccountsList:Codable {
    var Accounts: [Account]
}

func getAccounts() -> AccountsList? {
    if let data = UserDefaults.standard.value(forKey: "accountsKey") as? Data{
        let accountList = try? JSONDecoder().decode(AccountsList.self, from: data)
        return accountList
    }
    return nil
}

func addAccountCreated(fullName: String, email: String, password: String, dateOfBirth: Date) {
    var currentAccountsList: AccountsList = getAccounts() ?? AccountsList(Accounts: [])
    
    let newAccount = Account(fullname: fullName, email: email, password: password, dateOfBirth: dateOfBirth)
    
    currentAccountsList.Accounts.append(newAccount)
    print(currentAccountsList)
    
    do{
        let data = try JSONEncoder().encode(currentAccountsList)
        UserDefaults.standard.setValue(data, forKey: "accountsKey")
    }catch {
        print(error.localizedDescription)
    }
    
}
