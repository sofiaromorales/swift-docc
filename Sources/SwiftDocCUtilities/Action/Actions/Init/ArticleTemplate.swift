/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2023 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See https://swift.org/LICENSE.txt for license information
 See https://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import Foundation
import SwiftDocC

struct ArticleTemplate {
    let title: String
    let content: String
    var isTechnologyRoot: Bool = false
    /// Formats the content of a DocC Article by adding
    /// the title and the technology root if applicable.
    var formattedArticleContent: String {
        var articleContent = """
        """
        articleContent += "# \(title) \n"
        if (isTechnologyRoot) {
            articleContent += """
            
            @Metadata {
              @TechnologyRoot
            }
            
            """
        }
        articleContent += content
        return articleContent
    }
}