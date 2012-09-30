//
//  Note.h
//  libmusic
//
//  Created by Victor Lima on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
  

// Notes name representations
extern NSString* const NOTE_NAME_A;
extern NSString* const NOTE_NAME_ASHARP;
extern NSString* const NOTE_NAME_AFLAT;
extern NSString* const NOTE_NAME_B;
extern NSString* const NOTE_NAME_BFLAT;
extern NSString* const NOTE_NAME_BSHARP;
extern NSString* const NOTE_NAME_C;
extern NSString* const NOTE_NAME_CSHARP;
extern NSString* const NOTE_NAME_CFLAT;
extern NSString* const NOTE_NAME_D;
extern NSString* const NOTE_NAME_DSHARP;
extern NSString* const NOTE_NAME_DFLAT;
extern NSString* const NOTE_NAME_E;
extern NSString* const NOTE_NAME_EFLAT;
extern NSString* const NOTE_NAME_ESHARP;
extern NSString* const NOTE_NAME_F;
extern NSString* const NOTE_NAME_FSHARP;
extern NSString* const NOTE_NAME_FFLAT;
extern NSString* const NOTE_NAME_G;
extern NSString* const NOTE_NAME_GSHARP;
extern NSString* const NOTE_NAME_GFLAT;

// Musical signs representations ( flat, sharp, dim, ... )
extern NSString * const SHARP_SIGN;
extern NSString * const FLAT_SIGN;
extern NSString * const MINOR_SIGN;
extern NSString * const SEVENTH_SIGN;
extern NSString * const MAJOR_SEVENTH_SIGN;
extern NSString * const SIXTH_SIGN;
extern NSString * const FLAT_FIFTH;
extern NSString * const DIM_SIGN;
extern NSString * const NINE_SIGN;
extern NSString * const FLAT_NINE_SIGN;

#define INVALID_NOTE -20   
     
typedef enum {    
    A = 0, 
    ASHARP,
    B, 
    C,
    CSHARP,
    D,
    DSHARP,
    E, 
    F,
    FSHARP,
    G,
    GSHARP
} NOTE;

@interface Note : NSObject 

@property (nonatomic, readonly) NOTE note;
@property (nonatomic, readonly) NSInteger noteIndex;

- (id) initWithNote:(NOTE)note;
- (id) initWithNoteName:(NSString *)note;
- (NSString *) noteNameAsString;

@end
