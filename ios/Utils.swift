//
//  Utils.swift
//  bdk-rn
//


import Foundation

class BdkProgress: Progress {
    func update(progress: Float, message: String?) {
        print("progress", progress, message as Any)
    }
}


func createChangeDescriptor(descriptor: String) -> String {
    return descriptor.replacingOccurrences(of: "/84'/1'/0'/0/*", with: "/84'/1'/0'/1/*")
}


func setNetwork(networkStr: String?) -> Network {
    switch (networkStr) {
        case "testnet": return Network.testnet
        case "bitcoin": return Network.bitcoin
        case "regtest": return Network.regtest
        case "signet":  return Network.signet
        default: return Network.testnet
    }
}

func getNetworkString(network: Network) -> String {
    switch (network) {
        case Network.testnet: return "testnet"
        case Network.bitcoin: return "bitcoin"
        case Network.regtest: return "regtest"
        case Network.signet:  return "signet"
    }
}

func setWordCount(wordCount: NSNumber?) -> WordCount {
    switch (wordCount) {
        case 15: return WordCount.words15
        case 18: return WordCount.words18
        case 21: return WordCount.words21
        case 24: return WordCount.words24
        default: return WordCount.words12
    }
}

func getEntropy(length: NSNumber) -> Array<UInt8> {
    var entropyArray: [UInt8] = []
    var g = SystemRandomNumberGenerator()
    for _ in 1...length.intValue {
        entropyArray.append(UInt8(Int.random(in: 1...256, using: &g)))
    }
    return entropyArray
}


func setAddressIndex(addressIndex: String?) -> AddressIndex {
    switch (addressIndex) {
        case "new": return AddressIndex.new
        case "lastUnused": return AddressIndex.lastUnused
        default: return AddressIndex.new
    }
}

func randomId() -> String {
    return UUID().uuidString
}
