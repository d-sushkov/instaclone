//
//  DatabaseManager.swift
//  InstaClone
//
//  Created by Denis Sushkov on 29.08.2020.
//  Copyright © 2020 Denis Sushkov. All rights reserved.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    // MARK: - Public
    
    /// Check if username and email are available
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    /// Insert new user data to database
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String representing username
    ///     - completion: Async callback for result if database entry suceeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) {error, _ in
            if error == nil {
//                succeeded
                completion(true)
                return
            } else {
//                failed
                completion(false)
                return
            }
        }
    }

}
