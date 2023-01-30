//
//  FileHelper.swift
//  persistencia_filemaneger
//
//  Created by Aluno08 on 14/12/22.
//

import Foundation

struct FileHelper {
    private let manager = FileManager.default
    
    func create (named name: String, with data: Data?) -> Bool {
        let documentsURL = manager.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let fileURL = documentsURL.appendingPathComponent(name)
        
        manager.createFile(atPath: fileURL.path, contents: data)
        
        return manager.fileExists(atPath: fileURL.path)
    }
    
    func read (name: String) -> Data? {
        let documentsURL = manager.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let fileURL = documentsURL.appendingPathComponent(name)
        
        return manager.contents(atPath: fileURL.path)
    }

    func update(named name: String, with data: Data?) -> Bool {
        let documentsURL = manager.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let fileURL = documentsURL.appendingPathComponent(name)
        
        do {
            try data?.write(to: fileURL)
            return true
        } catch {
            print(error.localizedDescription)
            return false
        }
    }

    func delete(named name: String) -> Bool {
        let documentsURL = manager.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let fileURL = documentsURL.appendingPathComponent(name)
        
        do {
            try manager.removeItem(at: fileURL)
            return true
        } catch {
            return false
        }
    }
}
