//
//  ModesAnalysis.h
//  libmusic
//
//  Created by Victor Lima on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Chord.h" 
 
typedef enum {
  IONIAN,
  DORIAN, 
  PHRYGIAN,
  LYDIAN, 
  MIXOLYDIAN,
  AEOLIAN, 
  LOCRIAN
} MODES;

@interface ModesAnalysis : NSObject

+ (NSArray *) chordsOfMode:(MODES)mode withScaleNotes:(NSArray *)scaleNotes;
+ (BOOL) isChord:(Chord *)chord inMode:(MODES)mode;
+ (NSString *) degreeOfChord:(Chord *)chord inMode:(MODES)mode;
+ (NSString *) modeLegends:(MODES)mode;

+ (NSArray *) buildFullModesTable;
+ (NSArray *) findsChordPositionInModes:(Chord *)c;
+ (NSString *) modeName:(MODES)mode;


@end
