//
//  Chord.m
//  libmusic
//
//  Created by Victor Lima on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Chord.h"

#import "Scale.h"

#define MAJOR_SCALE_THIRD 2
#define MAJOR_SCALE_FIFTH 4
#define MAJOR_SCALE_SEVENTH 6

#define ONE_STEP (int)1
#define ROOT_STEP 0 * ONE_STEP
#define MINOR_SECOND_STEP 1 * ONE_STEP
#define SECOND_STEP 2 * ONE_STEP
#define MINOR_THIRD_STEP 3 * ONE_STEP
#define MAJOR_THIRD_STEP 4 * ONE_STEP
#define FIFTH_STEP 7 * ONE_STEP
#define FLAT_FIFTH_STEP 6 * ONE_STEP
#define SEVENTH_STEP 10 * ONE_STEP
#define MAJOR_SEVENTH_STEP 11 * ONE_STEP
#define SIXTH_STEP 9 * ONE_STEP

#define CIFRA_REGEX CIFRA_REGEX_SONIK
#define CIFRA_REGEX_SIMPLE @"([A-G])(b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|b5|b9|9|13|b13)?)?"
#define CIFRA_REGEX_SONIK @"([A-G])(b|#)?(m)?(7M|7|6|dim)?((b5|b9|9|13|b13))?"
#define CIFRA_REGEX_ORIGINAL @"^[A-G](5|6|7|9|b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|b9|b13|13)?)?(\/[A-G](b|#)?)?$"
#define CIFRA_REGEX_ORIGINAL_BKP @"^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$"
#define CIFRA_REGEX_GROUPS @"([A-G]?(b|#))?(((m(aj)?|M|aug|dim|sus))([2-7]|b5|b9|9|13|b13)?)?(\/[A-G](b|#)?)?"

@interface Chord () {
  BOOL hasSeventh;
  BOOL hasMajorSeventh;
  BOOL isMajor;
  BOOL isMinor;
  
  Note *rootNote;
  Note *secondNote;
  Note *thirdNote;
  Note *fourthNote;
  Scale *chordScaleNotes;
  NSString *cifra;
}


@end


@implementation Chord

@synthesize rootNote;
@synthesize secondNote;
@synthesize thirdNote;
@synthesize fourthNote;
@synthesize chordScaleNotes;
@synthesize cifra;
@synthesize isMajor;
@synthesize isMinor;
@synthesize hasSeventh;
@synthesize hasMajorSeventh;

- (id) initWithRootNote:(Note *)rNote secondNote:(Note *)sNote thirdNote:(Note *)tNote fourthNote:(Note *)fNote {
    self = [super init];
    if( !self )
        return nil;
    
    rootNote = rNote;
    secondNote = sNote;
    thirdNote = tNote;
    fourthNote = fNote;
    
    return self;
}

- (id) initWithCifra:(NSString *)c {
    self = [super init];
    if( !self )
        return nil;
    
    cifra = [NSString stringWithString:c];
    
    [self buildChord];

    return self;
}

+ (BOOL) isValidChord:(NSString *) cifra {
  NSError* error = nil;
  
  NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:CIFRA_REGEX
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:&error];
  
  NSArray* matches = [regex matchesInString:cifra options:0 range:NSMakeRange(0, [cifra length]) ]; 
  return ( [matches count] > 0 );
}

- (void) buildChord {
    
    rootNote = [[Note alloc] initWithNote:INVALID_NOTE];
    secondNote = [[Note alloc] initWithNote:INVALID_NOTE];
    thirdNote = [[Note alloc] initWithNote:INVALID_NOTE];
    fourthNote = [[Note alloc] initWithNote:INVALID_NOTE];
    
    int i = 0;
    NSString *cifraRegex = [NSString stringWithFormat:@"%@", cifra];
    cifraRegex = [cifraRegex stringByReplacingOccurrencesOfString:@"(" withString:@""];
    cifraRegex = [cifraRegex stringByReplacingOccurrencesOfString:@")" withString:@""];
    
    NSMutableArray *chordComponentsFull = [NSMutableArray arrayWithArray:[cifraRegex captureComponentsMatchedByRegex:CIFRA_REGEX]];

    NSMutableArray *chordComponents = [NSMutableArray arrayWithArray:chordComponentsFull];
    
    for( NSString *match in chordComponentsFull ) 
        if( [match isEqualToString:@""] )
           [chordComponents removeObject:match];
    
    if( [chordComponents count] > 1 )
        [chordComponents removeObjectAtIndex:0];
  
    for(NSString *match in chordComponents) {
        if( i == 0 ) {
            rootNote = [[Note alloc] initWithNoteName:match];
            secondNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MAJOR_THIRD_STEP)];
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + FIFTH_STEP)];
            
            isMajor = YES;
            isMinor = !isMajor;
            
        }

        // TONIC VARIATIONS
        if( [match isEqualToString:FLAT_SIGN] ) {
            rootNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] - ONE_STEP)];
            secondNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MAJOR_THIRD_STEP)];
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + FIFTH_STEP)];
        }
        
        if( [match isEqualToString:SHARP_SIGN] ) {
            rootNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + ONE_STEP)];
            secondNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MAJOR_THIRD_STEP)];
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + FIFTH_STEP)];
        }
        
        if( [match isEqualToString:DIM_SIGN] ) {
            secondNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MINOR_THIRD_STEP)];
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + ( 2 * MINOR_THIRD_STEP))];
            fourthNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + ( 3 * MINOR_THIRD_STEP))];
        }
         
        // MINOR VARIATIONS
        if( [match isEqualToString:MINOR_SIGN] ) {
            isMinor = YES;
            isMajor = !isMinor;
            
            secondNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MINOR_THIRD_STEP)];
        }
 
        if( [match isEqualToString:FLAT_FIFTH] )
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + FLAT_FIFTH_STEP )];

        // SEVENTH VARIATION
        if( [match isEqualToString:SEVENTH_SIGN] ) {
            hasSeventh = YES;
            hasMajorSeventh = !hasSeventh;
            fourthNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + SEVENTH_STEP )];
        }
 
        if( [match isEqualToString:MAJOR_SEVENTH_SIGN] ) {
            hasMajorSeventh = YES;
            hasSeventh = !hasMajorSeventh;
            fourthNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MAJOR_SEVENTH_STEP )];
        }

        if( [match isEqualToString:SIXTH_SIGN] )
            fourthNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + SIXTH_STEP )];
        
        if( [match isEqualToString:NINE_SIGN] )
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + SECOND_STEP)];

        if( [match isEqualToString:FLAT_NINE_SIGN] )
            thirdNote = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote noteIndex] + MINOR_SECOND_STEP)];

        i++;
    }
}

- (NSInteger) signature {
    return [rootNote noteIndex] + [secondNote noteIndex] + [thirdNote noteIndex] + [fourthNote noteIndex];
}

- (NSArray *) buildChordVariations {
    NSMutableArray *variationsArray = [[NSMutableArray alloc] initWithCapacity:4];
    NSArray *notesArray = [NSArray arrayWithObjects:rootNote, secondNote, thirdNote, fourthNote, nil];
    
    if( [fourthNote noteIndex] != INVALID_NOTE ) {
        Chord *c1 = [[Chord alloc] initWithRootNote:[notesArray objectAtIndex:0] 
                                         secondNote:[notesArray objectAtIndex:1] 
                                          thirdNote:[notesArray objectAtIndex:2] 
                                         fourthNote:[notesArray objectAtIndex:3]];
        Chord *c2 = [[Chord alloc] initWithRootNote:[notesArray objectAtIndex:3]
                                          secondNote:[notesArray objectAtIndex:0] 
                                           thirdNote:[notesArray objectAtIndex:1] 
                                          fourthNote:[notesArray objectAtIndex:2]];
        Chord *c3 = [[Chord alloc] initWithRootNote:[notesArray objectAtIndex:2]
                                          secondNote:[notesArray objectAtIndex:3] 
                                           thirdNote:[notesArray objectAtIndex:0] 
                                          fourthNote:[notesArray objectAtIndex:1]];
        [variationsArray addObject:c1];
        [variationsArray addObject:c2];
        [variationsArray addObject:c3];
    } else
        return nil;
        
    
    return variationsArray;
}

- (BOOL) isEqual:(id)object {
    Chord *c = (Chord *)object;
    
    return ( c.rootNote.noteIndex == self.rootNote.noteIndex && c.secondNote.noteIndex == self.secondNote.noteIndex && c.thirdNote.noteIndex == self.thirdNote.noteIndex && c.fourthNote.noteIndex == self.fourthNote.noteIndex );
}

- (NSString *) description {
    return [NSString stringWithFormat:@"Cifra: %@\n rootNote: %@\n secondNote: %@\n thirdNote: %@\n fourthNote: %@\n", [self cifra], [rootNote noteNameAsString], [secondNote noteNameAsString], [thirdNote noteNameAsString], [fourthNote noteNameAsString]];
}

- (NSString *) cifra {
    BOOL major = YES, hasFourthNote = ([fourthNote noteIndex] != INVALID_NOTE ), hasSixth = NO;
    int fifth = 0, ninth = -1, seventh = -1;

    // major or minor?
    if( NOTE_BY_INDEX([rootNote noteIndex] + 4) == [secondNote noteIndex] )
        major = YES;
    else if( NOTE_BY_INDEX([rootNote noteIndex] + 3) == [secondNote noteIndex] )
        major = NO;
    
    // flat fifth, fifth or augmented fifth
    if( NOTE_BY_INDEX([rootNote noteIndex] + 8) == [thirdNote noteIndex] ) 
        fifth = 1;
    else if( NOTE_BY_INDEX([rootNote noteIndex] + 6) == [thirdNote noteIndex] ) 
        fifth = -1;
    
    if( hasFourthNote )
        if( NOTE_BY_INDEX([rootNote noteIndex] + 9) == [fourthNote noteIndex] ) 
            hasSixth = YES;
    
    if( hasFourthNote ) {
        if( NOTE_BY_INDEX([rootNote noteIndex] + 1) == [fourthNote noteIndex] )
            ninth = 0;
        else if( NOTE_BY_INDEX([rootNote noteIndex] + 2) == [fourthNote noteIndex] )
            ninth = 1;
    }
    
    
    // seventh or major seventh
    if( hasFourthNote ) {
        if( NOTE_BY_INDEX([rootNote noteIndex] + 10) == [fourthNote noteIndex] ) 
            seventh = 0;
        else if( NOTE_BY_INDEX([rootNote noteIndex] + 11) == [fourthNote noteIndex] ) 
            seventh = 1; 
    }
    
    return [NSString stringWithFormat:@"%@%@%@%@%@%@", [rootNote noteNameAsString], 
                                                 !major ? @"m" : @"", 
                                                 hasFourthNote && hasSixth ? @"6" : @"",
                                                 hasFourthNote && seventh != -1 ? (seventh == 1 ? (!major ? @"(7M)" : @"7M") : @"7") : @"",
                                                 hasFourthNote && ninth != -1 ? (ninth == 0 ? @"(b9)" : @"(9)" ) : @"",
                                                 fifth == 0 ? @"" : fifth == -1 ? @"(b5)" : @"(b6)"];
} 

- (NSArray *) buildProgressionDominantCadence {
    Chord *V7 = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [secondNote noteNameAsString]]];
    
    return [NSArray arrayWithObjects:self, V7, self, nil];
}

- (NSArray *) buildProgressionSubDominantCadence {
    Note *subII = [[Note alloc] initWithNote:NOTE_BY_INDEX([rootNote note] + 1)];
    Chord *subV7 = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [subII noteNameAsString]]];
    
    return [NSArray arrayWithObjects:self, subV7, self, nil];
}

                 
@end
