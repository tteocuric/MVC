//
//  FactBook.swift
//  FunFacts
//
//  Created by Teo on 24/03/15.
//  Copyright (c) 2015 Teo. All rights reserved.
//

import Foundation

class SkateTrick {
    
    
    var inTricks: [String]
    var stanceArray: [String]
    private static var trickCounter:Int = 0
    
    
    init(easy: Bool) {
        if easy {
            //Easy Trick Collection
            self.inTricks = [
                "Kickflip",
                "Heelflip",
                "Fs shuvit",
                "Shuvit",
                "360 shuvit",
                "Ollie 180",
                "360 flip",
                
            ]
            self.stanceArray = [
                " ",
                "Fakie"    ]
        }
        else {
            //Hard Trick Collection
            self.inTricks = [
                "Kickflip",
                "Heelflip",
                "Fs shuvit",
                "Shuvit",
                "360 shuvit",
                "Ollie 180",
                "360 flip",
                "Varial heelflip",
                "Inward heelflip",
                "Bigspin",
                "Fs flip",
                "Bs flip",
                "Fs heelflip",
                "Bs heelflip",
                "Bigspin kickflip",
                "Bigspin heelflip",
                "Gazelle ",
                "Gazelle kickflip",
                "Gazelle heelflip",
                "Forward flip",
                "Double kickflip",
                "Triple kickflip",
                "Double heelflip",
                "Lazer flip"
            ]
            self.stanceArray = [
                " ",
                "Switch",
                "Nollie",
                "Fakie",    ]
        }
        
    }
    
    
    func randomTrick() -> String  {
        var randomintrick = arc4random_uniform(UInt32(self.inTricks.count))
        var randomstance = arc4random_uniform(UInt32(self.stanceArray.count))
        SkateTrick.trickCounter++
        return self.stanceArray[Int(randomstance)] + " " + self.inTricks[Int(randomintrick)]
    }
    
    
}




class RailSkateTrick: SkateTrick {
    var side: [String]
    var outtrick: [String]
    var grind: [String]
    
    
    override init(easy: Bool) {
        
        if easy {
            
            self.side = ["Fs",
                "Bs",
                "Fs",
                "Bs",
                " " ]
            self.grind = ["50-50",
                "5-0",
                "Nosegrind",
                "Smith grind",
                "Feeble",
                "Lipslide",
                "Boardslide",
                "Tailslide",
                "Crooked grind" ]
            
            self.outtrick = ["Kickflip",
                "Heelflip",
                "Fs shuvit",
                "Shuvit",
                "360 shuvit",
                "Fs 180",
                "Bs 180",
                " ",
                " ",
                " ",
                " ",
                " ",
                " " ]
        }
        else {
            
            self.side = [ "Fs",
                "Bs",
                "Fs",
                "Bs",
                " "]
            self.grind = ["50-50",
                "5-0",
                "Nosegrind",
                "Smith grind",
                "Feeble",
                "Lipslide",
                "Boardslide",
                "Tailslide",
                "Noseslide",
                "Bluntslide",
                "Noseblunt slide",
                "Crooked grind",
                "Overcrook", ]
            self.outtrick = ["Kickflip",
                "Heelflip",
                "Fs shuvit",
                "Shuvit",
                "360 shuvit",
                "Fs Ollie 180",
                "Bs Ollie 180",
                "360 flip",
                "Varial heelflip",
                "Inward heelflip",
                "Bigspin"
            ]
        }
        super.init(easy: easy)
        
    }
    override func randomTrick() -> String {
        //loše
        SkateTrick.trickCounter++
        super.randomTrick()
        var randomintrick = arc4random_uniform(UInt32(self.inTricks.count))
        var randomstance = arc4random_uniform(UInt32(self.stanceArray.count))
        var randomside = arc4random_uniform(UInt32(self.side.count))
        var randomegrind = arc4random_uniform(UInt32(self.grind.count))
        var randomouttrick = arc4random_uniform(UInt32(self.outtrick.count))
        
        return self.stanceArray[Int(randomstance)] + " " + self.side[Int(randomside)] + " " + self.inTricks[Int(randomintrick)] + " " + self.grind[Int(randomegrind)] + " " + self.outtrick[Int(randomouttrick)]
        
    }
}


class ManualSkateTrick: SkateTrick{
    
    var side: [String]
    var outtrick: [String]
    var manual: [String]
    
    override init(easy: Bool) {
        
        if easy {
            self.side = ["Fs",
                "Bs",
                "Fs",
                "Bs",
                " " ]
            self.manual = ["Nose Manual",
                "Manual",
                "Manual" ]
            
            self.outtrick = ["Kickflip",
                "Heelflip",
                "Fs shuvit",
                "Shuvit",
                
                "360 shuvit",
                "Fs 180",
                "Bs 180",
                " ",
                " ",
                " ",
                " ",
                " ",
                " " ]
            
            
        }
        else {
            self.side = [ "Fs",
                "Bs",
                "Fs",
                "Bs",
                " "]
            self.manual = ["Nose Manual",
                "Manual",
                "Manual", ]
            
            self.outtrick = ["Kickflip",
                "Heelflip",
                "Fs shuvit",
                "Shuvit",
                "360 shuvit",
                "Fs Ollie 180",
                "Bs Ollie 180",
                "360 flip",
                "Varial heelflip",
                "Inward heelflip",
                "Bigspin"
            ]
            
        }
        super.init(easy: easy)
    }
    
    override func randomTrick() -> String {
        super.randomTrick()
        var randomintrick = Int(arc4random_uniform(UInt32(self.inTricks.count)))
        var randomstance = Int(arc4random_uniform(UInt32(self.stanceArray.count)))
        var randomside = Int(arc4random_uniform(UInt32(self.side.count)))
        var randomemanual = Int(arc4random_uniform(UInt32(self.manual.count)))
        var randomouttrick = Int(arc4random_uniform(UInt32(self.outtrick.count)))
        
        let str1 = self.stanceArray[randomstance] + " " + self.side[randomside]
        let str2 = " " + self.inTricks[randomintrick] + " "
        let str3 = self.manual[randomemanual] + " " + self.outtrick[randomouttrick]
        let skateTrick = str1 +  str2 + str3
        
        
        return skateTrick
    }
}