//
//  Page.swift
//  InteractiveStory
//
//  Created by Dagmawi Nadew-Assefa on 5/5/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import Foundation


class Page {
    
    var story: Story
    
    typealias Choice = (title: String, page: Page)
    
    var firstChoice: Choice?
    var secondChoice: Choice?
    
    init(story: Story) {
        self.story = story
    }
}

extension Page{

    func addChoiceWith(title: String, story: Story) -> Page {
        
        let page = Page(story: story)
        return addChoiceWith(title: title, page: page)
    }
    
    func addChoiceWith(title: String, page: Page) -> Page{
        
        switch (firstChoice, secondChoice) {
        case (.some, .some): break
        case (.some, .none): secondChoice = (title, page)
        case (.none, .none), (.none, .some) : firstChoice = (title, page)
        }
        return page
    }
    
}
