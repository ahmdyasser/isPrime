// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

func isPrime(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    if n % 2 == 0 || n % 3 == 0 {
        return false
    }
    var i = 5
    while i * i <= n {
        if n % i == 0 || n % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    return true
}

if let number = Int(readLine() ?? "") {
    if isPrime(number) {
        print("\(number) is a prime number.")
    } else {
        print("\(number) is not a prime number.")
    }
} else {
    print("Please provide a valid integer.")
    exit(1)
}
