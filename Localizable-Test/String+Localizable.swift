//
//  String+Localizable.swift
//  Localizable-Test
//
//  Created by Serhii Syrotynin on 6/9/19.
//  Copyright © 2019 Serhii Syrotynin. All rights reserved.
//

import Foundation

extension String
{
	func localized(comment: String = "") -> String
	{
		return NSLocalizedString(self, comment: comment)
	}

	func localized(comment: String = "", _ arguments: CVarArg...) -> String
	{
		return String(format: localized(comment: comment), arguments: arguments)
	}
}
