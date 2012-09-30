//
//  Scale.m
//  libmusic
//
//  Created by Victor Lima on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Scale.h"
#import "Chord.h"

#define MAJOR_SCALE_NOTES 7

@interface Scale () {
   SCALE_TYPE scaleType;
   Note *rootNote;
   NSMutableArray *notesArray;
}

@end

@implementation Scale 

@synthesize scaleType;

- (id) init {
    self = [super init];
    self = [self initWithScaleType:MAJOR_SCALE withRootNote:nil];
    
    return self;
}

- (id) initWithRootNote:(Note *)rootNote {
    self = [super init];
    self = [self initWithScaleType:CHROMATIC withRootNote:nil];
    
    return self;
}


- (id) initWithScaleType:(SCALE_TYPE)sType withRootNote:(Note *)rNote {
    self = [super init];
    if( self ) {
        notesArray = [[NSMutableArray alloc] init];
        rootNote = rNote;
        scaleType = sType;
        
        switch (scaleType) {
            case FULL_CHROMATIC:
                [self buildFullChromaticScaleForRootNote:rootNote];
                break;
            case MAJOR_SCALE:
                [self buildMajorScaleForRootNote:rootNote];
                break;
            case MINOR_HARMONIC_SCALE:
                [self buildMinorHarmonicScaleForRootNote:rootNote];
                break;
            case MINOR_NATURAL_SCALE:
                [self buildMinorNaturalScaleForRootNote:rootNote];
                break;
            case MINOR_MELODIC_SCALE:
                [self buildMinorMelodicScaleForRootNote:rootNote];
                break;
                
 
            default:
                break;
        }
        
    }
    
    return self;
}

- (NSArray *) scaleNotes {
    return notesArray;
}
 
- (NSArray *) scaleChords {
    NSMutableArray *chordArray = [[NSMutableArray alloc] initWithCapacity:7];
    for( int i = 0; i < 7; i++ ) {
        Chord *c = [[Chord alloc] initWithRootNote:[notesArray objectAtIndex:i % 7]
                                         secondNote:[notesArray objectAtIndex:(i + 2) % 7]
                                          thirdNote:[notesArray objectAtIndex:(i + 4) % 7]
                                         fourthNote:[notesArray objectAtIndex:(i + 6) % 7]];
        
        NSLog(@"%@", c);
        [chordArray addObject:c];
    }
    
    return chordArray;
}

- (void) buildFullChromaticScaleForRootNote:(Note *)note {
    notesArray = [[NSMutableArray alloc] init];
    
    int idx;
    NOTE noteValue = [note note];
    
    for( idx = 0; idx < MAX_NOTES; idx++ ) {
        NOTE nextNote = NOTE_BY_INDEX(noteValue + idx);
        Note *note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
    }
}

- (void) buildMajorScaleForRootNote:(Note *)note {
    notesArray = [[NSMutableArray alloc] init];
    
    int idx;
    NOTE noteValue = [note note];
    for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
        NOTE nextNote;
        Note *note;
        switch (idx) { 
            case 0: // one step
                nextNote = NOTE_BY_INDEX(noteValue + idx);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break; 
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
                nextNote = NOTE_BY_INDEX(nextNote + 2);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
                
            case 3: // half step
                nextNote = NOTE_BY_INDEX(nextNote + 1);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            default:
                break;
        }
    }
}

- (void) buildMinorHarmonicScaleForRootNote:(Note *)note {
    notesArray = [[NSMutableArray alloc] init];
    
    int idx;
    NOTE noteValue = [note note];
    for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
        NOTE nextNote;
        Note *note;
        switch (idx) {
            case 0: // one step
                nextNote = NOTE_BY_INDEX(noteValue + idx);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            case 1:
            case 3:
            case 4:
                nextNote = NOTE_BY_INDEX(nextNote + 2);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;

            case 6: // one and half step
                nextNote = NOTE_BY_INDEX(nextNote + 3);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;

            case 2: // half step
            case 5:
                nextNote = NOTE_BY_INDEX(nextNote + 1);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            default:
                break;
        }
    }
}

- (void) buildMinorNaturalScaleForRootNote:(Note *)note {
    notesArray = [[NSMutableArray alloc] init];
    
    int idx;
    NOTE noteValue = [note note];
    for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
        NOTE nextNote;
        Note *note;
        switch (idx) {
            case 0: // one step
                nextNote = NOTE_BY_INDEX(noteValue + idx);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            case 1:
            case 3:
            case 4:
            case 6: // one step
                nextNote = NOTE_BY_INDEX(nextNote + 2);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            case 2: // half step
            case 5:
                nextNote = NOTE_BY_INDEX(nextNote + 1);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            default:
                break;
        }
    }
}

- (void) buildMinorMelodicScaleForRootNote:(Note *)note {
    notesArray = [[NSMutableArray alloc] init];
    
    int idx;
    NOTE noteValue = [note note];
    for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
        NOTE nextNote;
        Note *note;
        switch (idx) {
            case 0: // one step
                nextNote = NOTE_BY_INDEX(noteValue + idx);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
                nextNote = NOTE_BY_INDEX(nextNote + 2);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            case 2: // half step
                nextNote = NOTE_BY_INDEX(nextNote + 1);
                note = [[Note alloc] initWithNote:nextNote];
                [notesArray addObject:note];
                break;
            default:
                break;
        }
    }
}

- (void) buildIonianModeScaleForRootNote:(Note *)note {
  [self buildMajorScaleForRootNote:note];
}

- (void) buildDorianModeScaleForRootNote:(Note *)note {
  notesArray = [[NSMutableArray alloc] init];
  
  int idx;
  NOTE noteValue = [note note];
  for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
    NOTE nextNote;
    Note *note;
    switch (idx) { 
      case 0:
        nextNote = NOTE_BY_INDEX(noteValue + idx);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break; 
      case 1: // T 
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 2: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 3: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 4: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 5: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      case 6: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 7: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      default:
        break;
    }
  }
}

- (void) buildPhrygianModeScaleForRootNote:(Note *)note {
  notesArray = [[NSMutableArray alloc] init];
  
  int idx;
  NOTE noteValue = [note note];
  for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
    NOTE nextNote;
    Note *note;
    switch (idx) { 
      case 0:
        nextNote = NOTE_BY_INDEX(noteValue + idx);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break; 
      case 1: // s 
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 2: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 3: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 4: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 5: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      case 6: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 7: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      default:
        break;
    }
  }
}

- (void) buildLydianModeScaleForRootNote:(Note *)note {
  notesArray = [[NSMutableArray alloc] init];
  
  int idx;
  NOTE noteValue = [note note];
  for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
    NOTE nextNote;
    Note *note;
    switch (idx) { 
      case 0:
        nextNote = NOTE_BY_INDEX(noteValue + idx);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break; 
      case 1: // T 
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 2: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 3: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 4: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 5: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      case 6: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 7: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      default:
        break;
    }
  }
}

- (void) buildMixolydianModeScaleForRootNote:(Note *)note {
  notesArray = [[NSMutableArray alloc] init];
  
  int idx;
  NOTE noteValue = [note note];
  for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
    NOTE nextNote;
    Note *note;
    switch (idx) { 
      case 0:
        nextNote = NOTE_BY_INDEX(noteValue + idx);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break; 
      case 1: // T 
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 2: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 3: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 4: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 5: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      case 6: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 7: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      default:
        break;
    }
  }
}

- (void) buildAeolianModeScaleForRootNote:(Note *)note {
  notesArray = [[NSMutableArray alloc] init];
  
  int idx;
  NOTE noteValue = [note note];
  for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
    NOTE nextNote;
    Note *note;
    switch (idx) { 
      case 0:
        nextNote = NOTE_BY_INDEX(noteValue + idx);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break; 
      case 1: // T 
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 2: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 3: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 4: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 5: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      case 6: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 7: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      default:
        break;
    }
  }
}

- (void) buildLocrianModeScaleForRootNote:(Note *)note {
  notesArray = [[NSMutableArray alloc] init];
  
  int idx;
  NOTE noteValue = [note note];
  for( idx = 0; idx < MAJOR_SCALE_NOTES; idx++ ) {
    NOTE nextNote;
    Note *note;
    switch (idx) { 
      case 0:
        nextNote = NOTE_BY_INDEX(noteValue + idx);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break; 
      case 1: // s 
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 2: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 3: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 4: // s
        nextNote = NOTE_BY_INDEX(nextNote + 1);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 5: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      case 6: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;
      case 7: // T
        nextNote = NOTE_BY_INDEX(nextNote + 2);
        note = [[Note alloc] initWithNote:nextNote];
        [notesArray addObject:note];
        break;        
      default:
        break;
    }
  }
}

@end
