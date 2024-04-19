//
// PersonalChat.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonalChat: Codable, JSONEncodable, Hashable {

    public var id: String
    public var participants: [String]
    public var messages: [Message]

    public init(id: String, participants: [String], messages: [Message]) {
        self.id = id
        self.participants = participants
        self.messages = messages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case participants
        case messages
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(participants, forKey: .participants)
        try container.encode(messages, forKey: .messages)
    }
}

