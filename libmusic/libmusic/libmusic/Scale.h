//
//  Scale.h
//  libmusic
//
//  Created by Victor Lima on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>     
#import "Note.h"
    
@class Chord;  
    
#define MAX_NOTES 12  
    
// return notes   
#define NOTE_BY_INDEX( idx )  idx < 0 ? GSHARP : ( (idx) % MAX_NOTES )
#define NOTE_DEGREE_ROMAN( n ) n == 0 ? @"I" : n == 1 ? @"II" : n == 2 ? @"III" : n == 3 ? @"IV" : n == 4 ? @"V" : n == 5 ? @"VI" :  n == 6 ? @"VII" : @"" 
       
typedef enum {         
    FULL_CHROMATIC,        
    CHROMATIC,          
    MAJOR_SCALE,    
    MINOR_NATURAL_SCALE,      
    MINOR_HARMONIC_SCALE,  
    MINOR_MELODIC_SCALE,
    IONIAN_MODE_SCALE,
    DORIAN_MODE_SCALE,
    PHRYGIAN_MODE_SCALE,
    LYDIAN_MODE_SCALE, 
    MIXOLYDIAN_MODE_SCALE,
    AEOLIAN_MODE_SCALE,
    LOCRIAN_MODE_SCALE
} SCALE_TYPE;   


@interface Scale : NSObject

@property(nonatomic, readonly) SCALE_TYPE scaleType;

- (id) initWithRootNote:(Note *)rootNote;
- (id) initWithScaleType:(SCALE_TYPE)scaleType withRootNote:(Note *)rootNote;
- (NSArray *) scaleNotes;
- (NSArray *) scaleChords;

// scale building methods
- (void) buildFullChromaticScaleForRootNote:(Note *)note;
- (void) buildMajorScaleForRootNote:(Note *)note;
- (void) buildMinorHarmonicScaleForRootNote:(Note *)note;
- (void) buildMinorNaturalScaleForRootNote:(Note *)note;
- (void) buildMinorMelodicScaleForRootNote:(Note *)note;
- (void) buildIonianModeScaleForRootNote:(Note *)note;
- (void) buildDorianModeScaleForRootNote:(Note *)note;
- (void) buildPhrygianModeScaleForRootNote:(Note *)note;
- (void) buildLydianModeScaleForRootNote:(Note *)note;
- (void) buildMixolydianModeScaleForRootNote:(Note *)note;
- (void) buildAeolianModeScaleForRootNote:(Note *)note;
- (void) buildLocrianModeScaleForRootNote:(Note *)note;


@end
