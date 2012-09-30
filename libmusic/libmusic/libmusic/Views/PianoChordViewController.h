//
//  PianoChordViewController.h
//  decomposer
//
//  Created by Victor Lima on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h> 
#import "Chord.h"
#import "Scale.h"
 
 
@interface PianoChordViewController : UIViewController
  
- (id)initWithChord:(Chord *)chord;  
   
@end
 