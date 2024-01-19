//
//  File.swift
//  Swift_DataStructure
//
//  Created by Ge Ding on 1/16/24.
//

import Foundation

class UnionFind {
    private var parent: [Int] = []
    var count: Int
    
    required init(count: Int, edges: [[Int]]) {
        self.count = count
        
        for i in 0..<count {
            parent.append(i)
        }
    }
    
    func restruct(_ edges: [[Int]]) {
        for arr in edges {
            union(arr[0], arr[1])
        }
    }
    
    private func find(_ p: Int) -> Int {
        if parent[p] != p {
            parent[p] = find(parent[p])
        }
        return parent[p]
    }
    
    private func union(_ p: Int,_ q: Int) {
        var rootP = find(p)
        var rootQ = find(q)
        
        if rootP == rootQ { return }
        
        parent[rootP] == rootQ
        count -= 1
    }
    
    func connected(_ p: Int,_ q: Int) -> Bool {
        return find(p) == find(q)
    }
}

struct UnionFindObject {
    private var parent: [Int]
    private(set) var count: Int
    
    init(count: Int, edges:[[Int]]) {
        self.count = count
        self.parent = Array(0..<count)
        
        for arr in edges {
            union(arr[0], arr[1])
        }
    }
    
    private mutating func find(_ p: Int) -> Int {
        if parent[p] != p {
            parent[p] = find(parent[p])
        }
        return parent[p]
    }
    
    mutating func union(_ p: Int, _ q: Int) {
        let rootP = find(p)
        let rootQ = find(q)
        
        if rootP == rootQ { return }
        
        parent[rootP] = rootQ
        count -= 1
    }
    
    mutating func connected(_ p: Int, _ q: Int) -> Bool {
        return find(p) == find(q)
    }
}
