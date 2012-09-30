//
//  Note.m
//  libmusic
//
//  Created by Victor Lima on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Note.h"

NSString* const NOTE_NAME_A = @"A";
NSString* const NOTE_NAME_ASHARP = @"A#";
NSString* const NOTE_NAME_AFLAT = @"Ab";
NSString* const NOTE_NAME_B = @"B";
NSString* const NOTE_NAME_BFLAT = @"Bb";
NSString* const NOTE_NAME_BSHARP = @"B#";
NSString* const NOTE_NAME_C = @"C";
NSString* const NOTE_NAME_CSHARP = @"C#";
NSString* const NOTE_NAME_CFLAT = @"Cb";
NSString* const NOTE_NAME_D = @"D";
NSString* const NOTE_NAME_DSHARP = @"D#";
NSString* const NOTE_NAME_DFLAT = @"Db";
NSString* const NOTE_NAME_E = @"E";
NSString* const NOTE_NAME_EFLAT = @"Eb";
NSString* const NOTE_NAME_ESHARP = @"E#";
NSString* const NOTE_NAME_F = @"F";
NSString* const NOTE_NAME_FSHARP = @"F#";
NSString* const NOTE_NAME_FFLAT = @"Fb";
NSString* const NOTE_NAME_G = @"G";
NSString* const NOTE_NAME_GSHARP = @"G#";
NSString* const NOTE_NAME_GFLAT = @"Gb";

NSString* const  SHARP_SIGN = @"#";
NSString* const  FLAT_SIGN = @"b";
NSString* const  MINOR_SIGN = @"m";
NSString* const  SEVENTH_SIGN = @"7";
NSString* const  MAJOR_SEVENTH_SIGN = @"7M";
NSString* const  SIXTH_SIGN = @"6";
NSString* const  FLAT_FIFTH = @"b5";
NSString* const  DIM_SIGN = @"dim";
NSString* const  NINE_SIGN = @"9";
NSString* const  FLAT_NINE_SIGN = @"b9";

@interface Note () {
  NOTE note;
  
  NSInteger _noteValue;
  NSInteger noteIndex;
}

@end

@implementation Note
@synthesize note;
@synthesize noteIndex;

- (id) initWithNote:(NOTE)aNote {
    self = [super init];
    if( self ) {
        note = aNote;

        switch (note) {
            case A:
                noteIndex = 0;
                break;
            case ASHARP:
                noteIndex =  1;
                break;
            case B:
                noteIndex =  2;
                break;
            case C:
                noteIndex =  3;
                break;
            case CSHARP:
                noteIndex =  4;
                break;
            case D:
                noteIndex =  5;
                break;
            case DSHARP:
                noteIndex =  6;
                break;
            case E:
                noteIndex =  7;
                break;
            case F:
                noteIndex =  8;
                break;
            case FSHARP:
                noteIndex =  9;
                break;
            case G:
                noteIndex =  10;
                break;
            case GSHARP:
                noteIndex =  11;
                break;
            default:
                noteIndex = INVALID_NOTE;
                break;
        }
    }
    
    return self;
}
 
- (id) initWithNoteName:(NSString *)noteName {
    self = [super init];
    if( self ) {
            if( [noteName isEqualToString:NOTE_NAME_A] ) {
                note = A;
            } else if( [noteName isEqualToString:NOTE_NAME_ASHARP] ) {
                note = ASHARP; 
            } else if( [noteName isEqualToString:NOTE_NAME_AFLAT] ) {
               note = GSHARP;
            } else if( [noteName isEqualToString:NOTE_NAME_B] ) {
                note = B; 
            } else if( [noteName isEqualToString:NOTE_NAME_BFLAT] ) { 
                note = ASHARP;
            } else if( [noteName isEqualToString:NOTE_NAME_BSHARP] ) { 
                note = C;
            } else if( [noteName isEqualToString:NOTE_NAME_C] ) {
                note = C; 
            } else if( [noteName isEqualToString:NOTE_NAME_CSHARP] ) {
                note = CSHARP; 
            } else if( [noteName isEqualToString:NOTE_NAME_CFLAT] ) {
                note = B;
            } else if( [noteName isEqualToString:NOTE_NAME_D] ) {
                note = D; 
            } else if( [noteName isEqualToString:NOTE_NAME_DSHARP] ) {
                note = DSHARP; 
            } else if( [noteName isEqualToString:NOTE_NAME_DFLAT] ) { 
                note = CSHARP;
            } else if( [noteName isEqualToString:NOTE_NAME_E] ) {
                note = E; 
            } else if( [noteName isEqualToString:NOTE_NAME_ESHARP] ) {
                note = F;
            } else if( [noteName isEqualToString:NOTE_NAME_EFLAT] ) {
                note = DSHARP;
            } else if( [noteName isEqualToString:NOTE_NAME_F] ) {
                note = F; 
            } else if( [noteName isEqualToString:NOTE_NAME_FSHARP] ) {
                note = FSHARP; 
            } else if( [noteName isEqualToString:NOTE_NAME_FFLAT] ) {
                note = E;
            } else if( [noteName isEqualToString:NOTE_NAME_G] ) {
                note = G; 
            } else if( [noteName isEqualToString:NOTE_NAME_GSHARP] ) {
                note = GSHARP; 
            } else if( [noteName isEqualToString:NOTE_NAME_GFLAT] ) {
                note = FSHARP; 
            } else 
                note = INVALID_NOTE;
        
        switch (note) {
            case A:
                noteIndex = 0;
                break;
            case ASHARP:
                noteIndex =  1;
                break;
            case B:
                noteIndex =  2;
                break;
            case C:
                noteIndex =  3;
                break;
            case CSHARP:
                noteIndex =  4;
                break;
            case D:
                noteIndex =  5;
                break;
            case DSHARP:
                noteIndex =  6;
                break;
            case E:
                noteIndex =  7;
                break;
            case F:
                noteIndex =  8;
                break;
            case FSHARP:
                noteIndex =  9;
                break;
            case G:
                noteIndex =  10;
                break;
            case GSHARP:
                noteIndex =  11;
                break;
            default:
                break;
        }

        
    } 
     
    return self;
} 

- (NSString *) noteNameAsString {
    switch (note) {
        case A:
            return NOTE_NAME_A;
        case ASHARP:
            return NOTE_NAME_ASHARP;
        case B:
            return NOTE_NAME_B;
        case C:
            return NOTE_NAME_C;
        case CSHARP:
            return NOTE_NAME_CSHARP;
        case D:
            return NOTE_NAME_D;
        case DSHARP:
            return NOTE_NAME_DSHARP;
        case E:
            return NOTE_NAME_E;
        case F:
            return NOTE_NAME_F;
        case FSHARP:
            return NOTE_NAME_FSHARP;
        case G: 
            return NOTE_NAME_G;
        case GSHARP:
            return NOTE_NAME_GSHARP;
        default: 
            break;
    }
    
    return nil;
}

- (NSString *)description {
    return [self noteNameAsString];
}


@end
