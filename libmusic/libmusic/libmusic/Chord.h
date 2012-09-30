//
//  Chord.h
//  libmusic
//
//  Created by Victor Lima on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"
#import "Scale.h"

@interface Chord : NSObject

@property (nonatomic, readonly) Note *rootNote; 
@property (nonatomic, readonly) Note *secondNote; 
@property (nonatomic, readonly) Note *thirdNote;
@property (nonatomic, readonly) Note *fourthNote;
@property (nonatomic, readonly) Scale *chordScaleNotes;
@property (nonatomic, readonly) NSString *cifra; 
@property (nonatomic, readonly) BOOL hasSeventh; 
@property (nonatomic, readonly) BOOL hasMajorSeventh;
@property (nonatomic, readonly) BOOL isMajor;
@property (nonatomic, readonly) BOOL isMinor; 

- (id) initWithCifra:(NSString *)cifra;
- (id) initWithRootNote:(Note *)rootNote secondNote:(Note *)secondNote thirdNote:(Note *)thirdNote fourthNote:(Note *)fourthNote;
- (NSArray *) buildChordVariations;
- (void) buildChord;

+ (BOOL) isValidChord:(NSString *)cifra;

@end
