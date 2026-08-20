//
//  Constants.swift
//  SwiftDocC
//
//  Created by Sofía Rodríguez on 20/08/2026.
//

import Foundation
import CConstants

package enum Constants {
    /// The DocC git commit
    package static let doccGitCommit = String(cString: DocCGitCommitHash)
}
