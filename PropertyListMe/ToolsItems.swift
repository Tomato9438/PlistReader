//
//  ToolsItems.swift
//  PropertyListMe
//
//  Created by Tomato on 2021/08/25.
//

import Foundation

struct ToolsItem: Codable {
	let imageIcon: String
	let toolsName: String
	let items: [Items]
}

struct Items: Codable {
	let item: String
	let borrower: String
}

// https://stackoverflow.com/questions/68916489/decode-data-from-propertylist/68916798#68916798
