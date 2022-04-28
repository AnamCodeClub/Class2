//
//  Swift.swift
//  Class2
//
//  Created by 이용준 on 2022/04/21.
//

import Foundation
import UIKit
//https://jusung.gitbook.io/the-swift-language-guide/language-guide/


// MARK: - 객체 지향의 핵심
// public, open, internal, private, fileprivate
public class Person {
    func speak() {
        print("hello!")
        
    }
}

class LeeYong: Person {
    var major: String = "iOS"
    override func speak() {
        print("aaaaa")
    }
}

fileprivate class Yongjun: Person {
    private var major = "Engineering"
    override func speak() {
        super.speak()
        print("bbbbbb")
    }
}

// MARK: - Swift 기본 문법
class Grammar {
    var variable: Int = 0 // 변경 가능
    let constant: Int = 1 // 변경 불가능
    
    
    // MARK: - Type
    var string: String = "hello"
    var list: [String] = ["a", "aaewe", "bbbbb", "a"]
    var dictionary: [String: String] = ["key": "value"]
    var set: Set = ["A", "A", "A", "B"]  // ["A","B"]
    
    
    // MARK: - Optional Binding
    
    var guardOptional: Int? = nil // Int? = Optional<Int>
    var letOptional: Optional<Int> = nil
    
    func letOptionalChaining() {
        print(letOptional)
        if let value = letOptional {
            print(value)
        }
    }
    
    func guardOptionalChaining() {
        print(guardOptional)
        guard let value = guardOptional else { return }
        print(value)
    }
    
    func forceUnwrap() {
        print(guardOptional!)
    }
    
    func unwrap() {
        // gaurdOptional
        print(guardOptional)
    }
    
    // MARK: function

    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    // MARK: - Argument
    
    func argumentFunc(_ a: String) {
        print(a)
    }
    // argumentfucn("hello")
    
    func argumentFunc(a: String) {
        print(a)
    }
    // argumentfucn(a: "hello")
    func argumentFunc(some a: String) {
        print(a)
    }
    // argumentfucn(some: "hello")
    
    
    // MARK: - Loop
    func whileCon() {
        let a = true
        var b = 1
        while (b < 2) {
            print("while")
            b -= 1
        }
    }
    
    func forCon() {
        var someArray = ["a", "b" ,"c"]
        
        for i in someArray {
            print(i)
        }
        
        for i in 0 ..< someArray.count {
            print(someArray[i])
        }
    }
    
    func ifCon() {
        var a = 1
        if a == 1 {
            print("1")
        } else if a == 2 {
            print("2")
        } else {
            print("3")
        }
    }
}

// MARK: - 고차함수 (파이썬: 람다함수) : 클로저 (Clojure)
// 함수형 프로그래밍
// 함수를 변수
// 얘네들 때문에 delegate 다 대체됨

class Clojure {
    var variableClojure: (_ a: Int, _ b: Int) -> Int = { a, b in
        return a + b
    }
    
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

// swift: oop
// ❤️POP❤️

// MARK: - Protocol

protocol ProtocolTest {
    var obligation: Int { get set }
    func mandatory()
}


//
//class Test: ProtocolTest {
//    var obligation: Int
//
//    func mandatory() {
//
//    }
//}






// AutoLayout


// 1. Frame (좌표계) x: 300, y: 700, width: 400, height: 100 잘안씀 거의 안씀
// 2. Auto Layout -> 관계값 

