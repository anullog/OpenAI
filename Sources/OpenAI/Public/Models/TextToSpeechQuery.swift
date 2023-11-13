//
//  TextToSpeechQuery.swift
//  
//
//  Created by Žan Menard on 13. 11. 23.
//

import Foundation

public struct TextToSpeechQuery: Codable, Equatable {
  public enum Voice: String, Codable {
    case alloy
    case echo
    case fable
    case onyx
    case nova
    case shimmer
  }

  public let model: Model
  public let input: String
  public let voice: String

  public init(model: Model, input: String, voice: Voice) {
    self.model = model
    self.input = input
    self.voice = voice.rawValue
  }
}
