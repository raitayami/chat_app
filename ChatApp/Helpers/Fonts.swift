//
//  Fonts.swift
//  ChatApp
//
//  Created by Tayami Rai on 24/07/2023.
//

import Foundation
import SwiftUI

extension Font {
    
    public static var bodyParagraph: Font{
        return Font.custom("LexendDeca-Regular", size: 14)
    }
    
    public static var button: Font{
        return Font.custom("LexendDeca-SemiBold", size: 14)
    }
    
    public static var smallText: Font{
        return Font.custom("LexendDeca-Regular", size: 10)
    }
    
    public static var tabBar: Font{
        return Font.custom("LexendDeca-Regular", size: 14)
    }
    
    public static var settings: Font{
        return Font.custom("LexendDeca-Regular", size: 16)
    }
    
    public static var titleText: Font{
        return Font.custom("LexendDeca-Bold", size: 23)
    }
    
    public static var pageTitle: Font{
        return Font.custom("LexendDeca-SemiBold", size: 33)
    }
    
    public static var chatHeading: Font{
        return Font.custom("LexendDeca-Regular", size: 19)
    }
    
}
