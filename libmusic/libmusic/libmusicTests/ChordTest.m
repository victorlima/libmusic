//
//  ChordTest.m
//  libmusic
//
//  Created by Victor Lima on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ChordTest.h"


@implementation ChordTest

- (void) testChordCifraMajorMinor {
    Chord *aMajorChord = [[Chord alloc] initWithCifra:@"A"];
    STAssertEquals(@"A", [[aMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@",[[aMajorChord rootNote] noteNameAsString],  [[aMajorChord thirdNote] noteNameAsString]);
    
    Chord *aFlatMajorChord = [[Chord alloc] initWithCifra:@"Ab"];
    STAssertEquals(@"G#", [[aFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord thirdNote] noteNameAsString]);
    
    Chord *aSharpMajorChord = [[Chord alloc] initWithCifra:@"A#"];
    STAssertEquals(@"A#", [[aSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[aSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord thirdNote] noteNameAsString]);
    
    Chord *bMajorChord = [[Chord alloc] initWithCifra:@"B"];
    STAssertEquals(@"B", [[bMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[bMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[bMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord thirdNote] noteNameAsString]);
    
    Chord *bFlatMajorChord = [[Chord alloc] initWithCifra:@"Bb"];
    STAssertEquals(@"A#", [[bFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[bFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *cMajorChord = [[Chord alloc] initWithCifra:@"C"];
    STAssertEquals(@"C", [[cMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord thirdNote] noteNameAsString]);
    
    Chord *cSharpMajorChord = [[Chord alloc] initWithCifra:@"C#"];
    STAssertEquals(@"C#", [[cSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[cSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord thirdNote] noteNameAsString]);
    
    Chord *cFlatMajorChord = [[Chord alloc] initWithCifra:@"Cb"];
    STAssertEquals(@"B", [[cFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[cFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[cFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *dMajorChord = [[Chord alloc] initWithCifra:@"D"];
    STAssertEquals(@"D", [[dMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *dSharpMajorChord = [[Chord alloc] initWithCifra:@"D#"];
    STAssertEquals(@"D#", [[dSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[dSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord thirdNote] noteNameAsString]);
    
    Chord *dFlatMajorChord = [[Chord alloc] initWithCifra:@"Db"];
    STAssertEquals(@"C#", [[dFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[dFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[dFlatMajorChord thirdNote] noteNameAsString]);
    
    Chord *eMajorChord = [[Chord alloc] initWithCifra:@"E"];
    STAssertEquals(@"E", [[eMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[eMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord thirdNote] noteNameAsString]);
    
    Chord *eFlatMajorChord = [[Chord alloc] initWithCifra:@"Eb"];
    STAssertEquals(@"D#", [[eFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Eb but was: %@", [[eFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[eFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *fMajorChord = [[Chord alloc] initWithCifra:@"F"];
    STAssertEquals(@"F", [[fMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *fSharpMajorChord = [[Chord alloc] initWithCifra:@"F#"];
    STAssertEquals(@"F#", [[fSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[fSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *gMajorChord = [[Chord alloc] initWithCifra:@"G"];
    STAssertEquals(@"G", [[gMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *gSharpMajorChord = [[Chord alloc] initWithCifra:@"G#"];
    STAssertEquals(@"G#", [[gSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[gSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord thirdNote] noteNameAsString]);
    
    Chord *gFlatMajorChord = [[Chord alloc] initWithCifra:@"Gb"];
    STAssertEquals(@"F#", [[gFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Gb but was: %@", [[gFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[gFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord thirdNote] noteNameAsString]);
    
    Chord *aMinorChord = [[Chord alloc] initWithCifra:@"Am"];
    STAssertEquals(@"A", [[aMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aMinorChord rootNote] noteNameAsString], [[aMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aMinorChord rootNote] noteNameAsString], [[aMinorChord thirdNote] noteNameAsString]);

    Chord *aSharpMinorChord = [[Chord alloc] initWithCifra:@"A#m"];
    STAssertEquals(@"A#", [[aSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aSharpMinorChord rootNote] noteNameAsString], [[aSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[aSharpMinorChord rootNote] noteNameAsString], [[aSharpMinorChord thirdNote] noteNameAsString]);

    Chord *aFlatMinorChord = [[Chord alloc] initWithCifra:@"Abm"];
    STAssertEquals(@"G#", [[aFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[aFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[aFlatMinorChord rootNote] noteNameAsString], [[aFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatMinorChord rootNote] noteNameAsString], [[aFlatMinorChord thirdNote] noteNameAsString]);

    Chord *bFlatMinorChord = [[Chord alloc] initWithCifra:@"Bbm"];
    STAssertEquals(@"A#", [[bFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Bb but was: %@", [[bFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[bFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatMinorChord rootNote] noteNameAsString], [[bFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bFlatMinorChord rootNote] noteNameAsString], [[bFlatMinorChord thirdNote] noteNameAsString]);

    Chord *bMinorChord = [[Chord alloc] initWithCifra:@"Bm"];
    STAssertEquals(@"B", [[bMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[bMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bMinorChord rootNote] noteNameAsString], [[bMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bMinorChord rootNote] noteNameAsString], [[bMinorChord thirdNote] noteNameAsString]);
    

    Chord *cMinorChord = [[Chord alloc] initWithCifra:@"Cm"];
    STAssertEquals(@"C", [[cMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cMinorChord rootNote] noteNameAsString], [[cMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cMinorChord rootNote] noteNameAsString], [[cMinorChord thirdNote] noteNameAsString]);
    
    Chord *cSharpMinorChord = [[Chord alloc] initWithCifra:@"C#m"];
    STAssertEquals(@"C#", [[cSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cSharpMinorChord rootNote] noteNameAsString], [[cSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cSharpMinorChord rootNote] noteNameAsString], [[cSharpMinorChord thirdNote] noteNameAsString]);

    Chord *dMinorChord = [[Chord alloc] initWithCifra:@"Dm"];
    STAssertEquals(@"D", [[dMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dMinorChord rootNote] noteNameAsString], [[dMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dMinorChord rootNote] noteNameAsString], [[dMinorChord thirdNote] noteNameAsString]);
    

    Chord *dSharpMinorChord = [[Chord alloc] initWithCifra:@"D#m"];
    STAssertEquals(@"D#", [[dSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dSharpMinorChord rootNote] noteNameAsString], [[dSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpMinorChord rootNote] noteNameAsString], [[dSharpMinorChord thirdNote] noteNameAsString]);
    
    Chord *dFlatMinorChord = [[Chord alloc] initWithCifra:@"Dbm"];
    STAssertEquals(@"C#", [[dFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[dFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[dFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[dFlatMinorChord rootNote] noteNameAsString], [[dFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[dFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[dFlatMinorChord rootNote] noteNameAsString], [[dFlatMinorChord thirdNote] noteNameAsString]);
    
    Chord *eMinorChord = [[Chord alloc] initWithCifra:@"Em"];
    STAssertEquals(@"E", [[eMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eMinorChord rootNote] noteNameAsString], [[eMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[eMinorChord rootNote] noteNameAsString], [[eMinorChord thirdNote] noteNameAsString]);
    
    Chord *eFlatMinorChord = [[Chord alloc] initWithCifra:@"Ebm"];
    STAssertEquals(@"D#", [[eFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[eFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[eFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[eFlatMinorChord rootNote] noteNameAsString], [[eFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[eFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eFlatMinorChord rootNote] noteNameAsString], [[eFlatMinorChord thirdNote] noteNameAsString]);

    Chord *fMinorChord = [[Chord alloc] initWithCifra:@"Fm"];
    STAssertEquals(@"F", [[fMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[fMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[fMinorChord rootNote] noteNameAsString], [[fMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fMinorChord rootNote] noteNameAsString], [[fMinorChord thirdNote] noteNameAsString]);
    
    Chord *fSharpMinorChord = [[Chord alloc] initWithCifra:@"F#m"];
    STAssertEquals(@"F#", [[fSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fSharpMinorChord rootNote] noteNameAsString], [[fSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fSharpMinorChord rootNote] noteNameAsString], [[fSharpMinorChord thirdNote] noteNameAsString]);

    Chord *fFlatMinorChord = [[Chord alloc] initWithCifra:@"Fbm"];
    STAssertEquals(@"E", [[fFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[fFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[fFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[fFlatMinorChord rootNote] noteNameAsString], [[fFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[fFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[fFlatMinorChord rootNote] noteNameAsString], [[fFlatMinorChord thirdNote] noteNameAsString]);
    
    Chord *gMinorChord = [[Chord alloc] initWithCifra:@"Gm"];
    STAssertEquals(@"G", [[gMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gMinorChord rootNote] noteNameAsString], [[gMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gMinorChord rootNote] noteNameAsString], [[gMinorChord thirdNote] noteNameAsString]);
    
    Chord *gFlatMinorChord = [[Chord alloc] initWithCifra:@"Gbm"];
    STAssertEquals(@"F#", [[gFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[gFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[gFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[gFlatMinorChord rootNote] noteNameAsString], [[gFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[gFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[gFlatMinorChord rootNote] noteNameAsString], [[gFlatMinorChord thirdNote] noteNameAsString]);
    
    Chord *gSharpMinorChord = [[Chord alloc] initWithCifra:@"G#m"];
    STAssertEquals(@"G#", [[gSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gSharpMinorChord rootNote] noteNameAsString], [[gSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gSharpMinorChord rootNote] noteNameAsString], [[gSharpMinorChord thirdNote] noteNameAsString]);
}

- (void) testChordChifraWith7 {
    Chord *aSeventhChord = [[Chord alloc] initWithCifra:@"A7"];
    STAssertEquals(@"A", [[aSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aSeventhChord rootNote] noteNameAsString], [[aSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aSeventhChord rootNote] noteNameAsString], [[aSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[aSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[aSeventhChord rootNote] noteNameAsString], [[aSeventhChord fourthNote] noteNameAsString]);

    Chord *aSharpSeventhChord = [[Chord alloc] initWithCifra:@"A#7"];
    STAssertEquals(@"A#", [[aSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[aSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[aSharpSeventhChord rootNote] noteNameAsString], [[aSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aSharpSeventhChord rootNote] noteNameAsString], [[aSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[aSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[aSharpSeventhChord rootNote] noteNameAsString], [[aSharpSeventhChord fourthNote] noteNameAsString]);

    Chord *aFlatSeventhChord = [[Chord alloc] initWithCifra:@"Ab7"];
    STAssertEquals(@"G#", [[aFlatSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aFlatSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aFlatSeventhChord rootNote] noteNameAsString], [[aFlatSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aFlatSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatSeventhChord rootNote] noteNameAsString], [[aFlatSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[aFlatSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[aFlatSeventhChord rootNote] noteNameAsString], [[aFlatSeventhChord fourthNote] noteNameAsString]);
    
    Chord *bSeventhChord = [[Chord alloc] initWithCifra:@"B7"];
    STAssertEquals(@"B", [[bSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[bSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[bSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[bSeventhChord rootNote] noteNameAsString], [[bSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bSeventhChord rootNote] noteNameAsString], [[bSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[bSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[bSeventhChord rootNote] noteNameAsString], [[bSeventhChord fourthNote] noteNameAsString]);

    Chord *bFlatSeventhChord = [[Chord alloc] initWithCifra:@"Bb7"];
    STAssertEquals(@"A#", [[bFlatSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[bFlatSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bFlatSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatSeventhChord rootNote] noteNameAsString], [[bFlatSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bFlatSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bFlatSeventhChord rootNote] noteNameAsString], [[bFlatSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[bFlatSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[bFlatSeventhChord rootNote] noteNameAsString], [[bFlatSeventhChord fourthNote] noteNameAsString]);

    Chord *cSeventhChord = [[Chord alloc] initWithCifra:@"C7"];
    STAssertEquals(@"C", [[cSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cSeventhChord rootNote] noteNameAsString], [[cSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cSeventhChord rootNote] noteNameAsString], [[cSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[cSeventhChord rootNote] noteNameAsString], [[cSeventhChord fourthNote] noteNameAsString]);

    Chord *cSharpSeventhChord = [[Chord alloc] initWithCifra:@"C#7"];
    STAssertEquals(@"C#", [[cSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[cSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[cSharpSeventhChord rootNote] noteNameAsString], [[cSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cSharpSeventhChord rootNote] noteNameAsString], [[cSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[cSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[cSharpSeventhChord rootNote] noteNameAsString], [[cSharpSeventhChord fourthNote] noteNameAsString]);
    
    Chord *dSeventhChord = [[Chord alloc] initWithCifra:@"D7"];
    STAssertEquals(@"D", [[dSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dSeventhChord rootNote] noteNameAsString], [[dSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dSeventhChord rootNote] noteNameAsString], [[dSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[dSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[dSeventhChord rootNote] noteNameAsString], [[dSeventhChord fourthNote] noteNameAsString]);

    Chord *dSharpSeventhChord = [[Chord alloc] initWithCifra:@"D#7"];
    STAssertEquals(@"D#", [[dSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[dSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[dSharpSeventhChord rootNote] noteNameAsString], [[dSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpSeventhChord rootNote] noteNameAsString], [[dSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[dSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[dSharpSeventhChord rootNote] noteNameAsString], [[dSharpSeventhChord fourthNote] noteNameAsString]);


    Chord *eSeventhChord = [[Chord alloc] initWithCifra:@"E7"];
    STAssertEquals(@"E", [[eSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[eSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eSeventhChord rootNote] noteNameAsString], [[eSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eSeventhChord rootNote] noteNameAsString], [[eSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[eSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[eSeventhChord rootNote] noteNameAsString], [[eSeventhChord fourthNote] noteNameAsString]);
    
    Chord *fSeventhChord = [[Chord alloc] initWithCifra:@"F7"];
    STAssertEquals(@"F", [[fSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fSeventhChord rootNote] noteNameAsString], [[fSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fSeventhChord rootNote] noteNameAsString], [[fSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[fSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[fSeventhChord rootNote] noteNameAsString], [[fSeventhChord fourthNote] noteNameAsString]);
    
    Chord *fSharpSeventhChord = [[Chord alloc] initWithCifra:@"F#7"];
    STAssertEquals(@"F#", [[fSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[fSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fSharpSeventhChord rootNote] noteNameAsString], [[fSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fSharpSeventhChord rootNote] noteNameAsString], [[fSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"E", [[fSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[fSharpSeventhChord rootNote] noteNameAsString], [[fSharpSeventhChord fourthNote] noteNameAsString]);
    
    Chord *gSeventhChord = [[Chord alloc] initWithCifra:@"G7"];
    STAssertEquals(@"G", [[gSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gSeventhChord rootNote] noteNameAsString], [[gSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gSeventhChord rootNote] noteNameAsString], [[gSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[gSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[gSeventhChord rootNote] noteNameAsString], [[gSeventhChord fourthNote] noteNameAsString]);

    Chord *gSharpSeventhChord = [[Chord alloc] initWithCifra:@"G#7"];
    STAssertEquals(@"G#", [[gSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[gSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[gSharpSeventhChord rootNote] noteNameAsString], [[gSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gSharpSeventhChord rootNote] noteNameAsString], [[gSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[gSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[gSharpSeventhChord rootNote] noteNameAsString], [[gSharpSeventhChord fourthNote] noteNameAsString]);

    Chord *aMinorSeventhChord = [[Chord alloc] initWithCifra:@"Am7"];
    STAssertEquals(@"A", [[aMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aMinorSeventhChord rootNote] noteNameAsString], [[aMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aMinorSeventhChord rootNote] noteNameAsString], [[aMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[aMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[aMinorSeventhChord rootNote] noteNameAsString], [[aMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *aMinorSharpSeventhChord = [[Chord alloc] initWithCifra:@"A#m7"];
    STAssertEquals(@"A#", [[aMinorSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aMinorSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aMinorSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aMinorSharpSeventhChord rootNote] noteNameAsString], [[aMinorSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aMinorSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aMinorSharpSeventhChord rootNote] noteNameAsString], [[aMinorSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[aMinorSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[aMinorSharpSeventhChord rootNote] noteNameAsString], [[aMinorSharpSeventhChord fourthNote] noteNameAsString]);
    
    Chord *aMinorFlatSeventhChord = [[Chord alloc] initWithCifra:@"Abm7"];
    STAssertEquals(@"G#", [[aMinorFlatSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aMinorFlatSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[aMinorFlatSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[aMinorFlatSeventhChord rootNote] noteNameAsString], [[aMinorFlatSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aMinorFlatSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aMinorFlatSeventhChord rootNote] noteNameAsString], [[aMinorFlatSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[aMinorFlatSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[aMinorFlatSeventhChord rootNote] noteNameAsString], [[aMinorFlatSeventhChord fourthNote] noteNameAsString]);
    
    Chord *bMinorSeventhChord = [[Chord alloc] initWithCifra:@"B7"];
    STAssertEquals(@"B", [[bMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[bMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[bMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[bMinorSeventhChord rootNote] noteNameAsString], [[bMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bMinorSeventhChord rootNote] noteNameAsString], [[bMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[bMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[bMinorSeventhChord rootNote] noteNameAsString], [[bMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *bMinorFlatSeventhChord = [[Chord alloc] initWithCifra:@"Bb7"];
    STAssertEquals(@"A#", [[bMinorFlatSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[bMinorFlatSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bMinorFlatSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bMinorFlatSeventhChord rootNote] noteNameAsString], [[bMinorFlatSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bMinorFlatSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bMinorFlatSeventhChord rootNote] noteNameAsString], [[bMinorFlatSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[bMinorFlatSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[bMinorFlatSeventhChord rootNote] noteNameAsString], [[bMinorFlatSeventhChord fourthNote] noteNameAsString]);
    
    Chord *cMinorSeventhChord = [[Chord alloc] initWithCifra:@"Cm7"];
    STAssertEquals(@"C", [[cMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cMinorSeventhChord rootNote] noteNameAsString], [[cMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cMinorSeventhChord rootNote] noteNameAsString], [[cMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[cMinorSeventhChord rootNote] noteNameAsString], [[cMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *cMinorSharpSeventhChord = [[Chord alloc] initWithCifra:@"C#m7"];
    STAssertEquals(@"C#", [[cMinorSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cMinorSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cMinorSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cMinorSharpSeventhChord rootNote] noteNameAsString], [[cMinorSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cMinorSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cMinorSharpSeventhChord rootNote] noteNameAsString], [[cMinorSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[cMinorSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[cMinorSharpSeventhChord rootNote] noteNameAsString], [[cMinorSharpSeventhChord fourthNote] noteNameAsString]);
    
    Chord *dMinorSeventhChord = [[Chord alloc] initWithCifra:@"Dm7"];
    STAssertEquals(@"D", [[dMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dMinorSeventhChord rootNote] noteNameAsString], [[dMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dMinorSeventhChord rootNote] noteNameAsString], [[dMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[dMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[dMinorSeventhChord rootNote] noteNameAsString], [[dMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *dMinorSharpSeventhChord = [[Chord alloc] initWithCifra:@"D#m7"];
    STAssertEquals(@"D#", [[dMinorSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dMinorSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dMinorSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dMinorSharpSeventhChord rootNote] noteNameAsString], [[dMinorSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dMinorSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dMinorSharpSeventhChord rootNote] noteNameAsString], [[dMinorSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[dMinorSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[dMinorSharpSeventhChord rootNote] noteNameAsString], [[dMinorSharpSeventhChord fourthNote] noteNameAsString]);
    
    
    Chord *eMinorSeventhChord = [[Chord alloc] initWithCifra:@"Em7"];
    STAssertEquals(@"E", [[eMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eMinorSeventhChord rootNote] noteNameAsString], [[eMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eMinorSeventhChord rootNote] noteNameAsString], [[eMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[eMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[eMinorSeventhChord rootNote] noteNameAsString], [[eMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *fMinorSeventhChord = [[Chord alloc] initWithCifra:@"Fm7"];
    STAssertEquals(@"F", [[fMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[fMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[fMinorSeventhChord rootNote] noteNameAsString], [[fMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fMinorSeventhChord rootNote] noteNameAsString], [[fMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[fMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[fMinorSeventhChord rootNote] noteNameAsString], [[fMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *fMinorSharpSeventhChord = [[Chord alloc] initWithCifra:@"F#m7"];
    STAssertEquals(@"F#", [[fMinorSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fMinorSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fMinorSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fMinorSharpSeventhChord rootNote] noteNameAsString], [[fMinorSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fMinorSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fMinorSharpSeventhChord rootNote] noteNameAsString], [[fMinorSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"E", [[fMinorSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[fMinorSharpSeventhChord rootNote] noteNameAsString], [[fMinorSharpSeventhChord fourthNote] noteNameAsString]);
    
    Chord *gMinorSeventhChord = [[Chord alloc] initWithCifra:@"Gm7"];
    STAssertEquals(@"G", [[gMinorSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMinorSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gMinorSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gMinorSeventhChord rootNote] noteNameAsString], [[gMinorSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gMinorSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gMinorSeventhChord rootNote] noteNameAsString], [[gMinorSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[gMinorSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[gMinorSeventhChord rootNote] noteNameAsString], [[gMinorSeventhChord fourthNote] noteNameAsString]);
    
    Chord *gMinorSharpSeventhChord = [[Chord alloc] initWithCifra:@"G#m7"];
    STAssertEquals(@"G#", [[gMinorSharpSeventhChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gMinorSharpSeventhChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gMinorSharpSeventhChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gMinorSharpSeventhChord rootNote] noteNameAsString], [[gMinorSharpSeventhChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gMinorSharpSeventhChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gMinorSharpSeventhChord rootNote] noteNameAsString], [[gMinorSharpSeventhChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[gMinorSharpSeventhChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[gMinorSharpSeventhChord rootNote] noteNameAsString], [[gMinorSharpSeventhChord fourthNote] noteNameAsString]);
    
    
    Chord *aMajorChord = [[Chord alloc] initWithCifra:@"A7M"];
    STAssertEquals(@"A", [[aMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@",[[aMajorChord rootNote] noteNameAsString],  [[aMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[aMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord fourthNote] noteNameAsString]);
    
    Chord *aFlatMajorChord = [[Chord alloc] initWithCifra:@"Ab7M"];
    STAssertEquals(@"G#", [[aFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[aFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord fourthNote] noteNameAsString]);

    
    Chord *aSharpMajorChord = [[Chord alloc] initWithCifra:@"A#7M"];
    STAssertEquals(@"A#", [[aSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[aSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[aSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *bMajorChord = [[Chord alloc] initWithCifra:@"B7M"];
    STAssertEquals(@"B", [[bMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[bMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[bMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[bMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord fourthNote] noteNameAsString]);

    
    Chord *bFlatMajorChord = [[Chord alloc] initWithCifra:@"Bb7M"];
    STAssertEquals(@"A#", [[bFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[bFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[bFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *cMajorChord = [[Chord alloc] initWithCifra:@"C7M"];
    STAssertEquals(@"C", [[cMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[cMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord fourthNote] noteNameAsString]);

    
    Chord *cSharpMajorChord = [[Chord alloc] initWithCifra:@"C#7M"];
    STAssertEquals(@"C#", [[cSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[cSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[cSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *cFlatMajorChord = [[Chord alloc] initWithCifra:@"Cb7M"];
    STAssertEquals(@"B", [[cFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[cFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[cFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *dMajorChord = [[Chord alloc] initWithCifra:@"D7M"];
    STAssertEquals(@"D", [[dMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[dMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord fourthNote] noteNameAsString]);

    
    Chord *dSharpMajorChord = [[Chord alloc] initWithCifra:@"D#7M"];
    STAssertEquals(@"D#", [[dSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[dSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[dSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *dFlatMajorChord = [[Chord alloc] initWithCifra:@"Db7M"];
    STAssertEquals(@"C#", [[dFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[dFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[dFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[dFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[dFlatMajorChord fourthNote] noteNameAsString]);

    
    Chord *eMajorChord = [[Chord alloc] initWithCifra:@"E7M"];
    STAssertEquals(@"E", [[eMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[eMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[eMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord fourthNote] noteNameAsString]);

    
    Chord *eFlatMajorChord = [[Chord alloc] initWithCifra:@"Eb7M"];
    STAssertEquals(@"D#", [[eFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Eb but was: %@", [[eFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[eFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[eFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *fMajorChord = [[Chord alloc] initWithCifra:@"F7M"];
    STAssertEquals(@"F", [[fMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *fSharpMajorChord = [[Chord alloc] initWithCifra:@"F#7M"];
    STAssertEquals(@"F#", [[fSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[fSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *gMajorChord = [[Chord alloc] initWithCifra:@"G7M"];
    STAssertEquals(@"G", [[gMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord thirdNote] noteNameAsString]);
    
    
    Chord *gSharpMajorChord = [[Chord alloc] initWithCifra:@"G#7M"];
    STAssertEquals(@"G#", [[gSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[gSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord thirdNote] noteNameAsString]);
    
    Chord *gFlatMajorChord = [[Chord alloc] initWithCifra:@"Gb7M"];
    STAssertEquals(@"F#", [[gFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Gb but was: %@", [[gFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[gFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord thirdNote] noteNameAsString]);
    
    Chord *aMinorChord = [[Chord alloc] initWithCifra:@"Am(7M)"];
    STAssertEquals(@"A", [[aMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aMinorChord rootNote] noteNameAsString], [[aMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aMinorChord rootNote] noteNameAsString], [[aMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[aMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[aMinorChord rootNote] noteNameAsString], [[aMinorChord fourthNote] noteNameAsString]);
    
    Chord *aSharpMinorChord = [[Chord alloc] initWithCifra:@"A#m(7M)"];
    STAssertEquals(@"A#", [[aSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aSharpMinorChord rootNote] noteNameAsString], [[aSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[aSharpMinorChord rootNote] noteNameAsString], [[aSharpMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[aSharpMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[aSharpMinorChord rootNote] noteNameAsString], [[aSharpMinorChord fourthNote] noteNameAsString]);
    
    Chord *aFlatMinorChord = [[Chord alloc] initWithCifra:@"Abm(7M)"];
    STAssertEquals(@"G#", [[aFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[aFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[aFlatMinorChord rootNote] noteNameAsString], [[aFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatMinorChord rootNote] noteNameAsString], [[aFlatMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[aFlatMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[aFlatMinorChord rootNote] noteNameAsString], [[aFlatMinorChord fourthNote] noteNameAsString]);
    
    Chord *bFlatMinorChord = [[Chord alloc] initWithCifra:@"Bbm(7M)"];
    STAssertEquals(@"A#", [[bFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Bb but was: %@", [[bFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[bFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatMinorChord rootNote] noteNameAsString], [[bFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bFlatMinorChord rootNote] noteNameAsString], [[bFlatMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[bFlatMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[bFlatMinorChord rootNote] noteNameAsString], [[bFlatMinorChord fourthNote] noteNameAsString]);

    
    Chord *bMinorChord = [[Chord alloc] initWithCifra:@"Bm(7M)"];
    STAssertEquals(@"B", [[bMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[bMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bMinorChord rootNote] noteNameAsString], [[bMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bMinorChord rootNote] noteNameAsString], [[bMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[bMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[bMinorChord rootNote] noteNameAsString], [[bMinorChord fourthNote] noteNameAsString]);
    
    
    Chord *cMinorChord = [[Chord alloc] initWithCifra:@"Cm(7M)"];
    STAssertEquals(@"C", [[cMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cMinorChord rootNote] noteNameAsString], [[cMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cMinorChord rootNote] noteNameAsString], [[cMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[cMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[cMinorChord rootNote] noteNameAsString], [[cMinorChord fourthNote] noteNameAsString]);
    
    
    Chord *cSharpMinorChord = [[Chord alloc] initWithCifra:@"C#m(7M)"];
    STAssertEquals(@"C#", [[cSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cSharpMinorChord rootNote] noteNameAsString], [[cSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cSharpMinorChord rootNote] noteNameAsString], [[cSharpMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[cSharpMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[cSharpMinorChord rootNote] noteNameAsString], [[cSharpMinorChord fourthNote] noteNameAsString]);

    
    Chord *dMinorChord = [[Chord alloc] initWithCifra:@"Dm(7M)"];
    STAssertEquals(@"D", [[dMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dMinorChord rootNote] noteNameAsString], [[dMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dMinorChord rootNote] noteNameAsString], [[dMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[dMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[dMinorChord rootNote] noteNameAsString], [[dMinorChord fourthNote] noteNameAsString]);

    
    
    Chord *dSharpMinorChord = [[Chord alloc] initWithCifra:@"D#m(7M)"];
    STAssertEquals(@"D#", [[dSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dSharpMinorChord rootNote] noteNameAsString], [[dSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpMinorChord rootNote] noteNameAsString], [[dSharpMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[dSharpMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[dSharpMinorChord rootNote] noteNameAsString], [[dSharpMinorChord fourthNote] noteNameAsString]);

    
    Chord *dFlatMinorChord = [[Chord alloc] initWithCifra:@"Dbm(7M)"];
    STAssertEquals(@"C#", [[dFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[dFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[dFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[dFlatMinorChord rootNote] noteNameAsString], [[dFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[dFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[dFlatMinorChord rootNote] noteNameAsString], [[dFlatMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[dFlatMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[dFlatMinorChord rootNote] noteNameAsString], [[dFlatMinorChord fourthNote] noteNameAsString]);

    
    Chord *eMinorChord = [[Chord alloc] initWithCifra:@"Em(7M)"];
    STAssertEquals(@"E", [[eMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eMinorChord rootNote] noteNameAsString], [[eMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[eMinorChord rootNote] noteNameAsString], [[eMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[eMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[eMinorChord rootNote] noteNameAsString], [[eMinorChord fourthNote] noteNameAsString]);

    
    Chord *eFlatMinorChord = [[Chord alloc] initWithCifra:@"Ebm(7M)"];
    STAssertEquals(@"D#", [[eFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[eFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[eFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[eFlatMinorChord rootNote] noteNameAsString], [[eFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[eFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eFlatMinorChord rootNote] noteNameAsString], [[eFlatMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[eFlatMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[eFlatMinorChord rootNote] noteNameAsString], [[eFlatMinorChord fourthNote] noteNameAsString]);

    
    Chord *fMinorChord = [[Chord alloc] initWithCifra:@"Fm(7M)"];
    STAssertEquals(@"F", [[fMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[fMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[fMinorChord rootNote] noteNameAsString], [[fMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fMinorChord rootNote] noteNameAsString], [[fMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"E", [[fMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[fMinorChord rootNote] noteNameAsString], [[fMinorChord fourthNote] noteNameAsString]);

    
    Chord *fSharpMinorChord = [[Chord alloc] initWithCifra:@"F#m(7M)"];
    STAssertEquals(@"F#", [[fSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fSharpMinorChord rootNote] noteNameAsString], [[fSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fSharpMinorChord rootNote] noteNameAsString], [[fSharpMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[fSharpMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[fSharpMinorChord rootNote] noteNameAsString], [[fSharpMinorChord fourthNote] noteNameAsString]);

    
    Chord *fFlatMinorChord = [[Chord alloc] initWithCifra:@"Fbm(7M)"];
    STAssertEquals(@"E", [[fFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[fFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[fFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[fFlatMinorChord rootNote] noteNameAsString], [[fFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[fFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[fFlatMinorChord rootNote] noteNameAsString], [[fFlatMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[fFlatMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[fFlatMinorChord rootNote] noteNameAsString], [[fFlatMinorChord fourthNote] noteNameAsString]);

    
    Chord *gMinorChord = [[Chord alloc] initWithCifra:@"Gm(7M)"];
    STAssertEquals(@"G", [[gMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gMinorChord rootNote] noteNameAsString], [[gMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gMinorChord rootNote] noteNameAsString], [[gMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[gMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[gMinorChord rootNote] noteNameAsString], [[gMinorChord fourthNote] noteNameAsString]);

    
    Chord *gFlatMinorChord = [[Chord alloc] initWithCifra:@"Gbm(7M)"];
    STAssertEquals(@"F#", [[gFlatMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[gFlatMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[gFlatMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[gFlatMinorChord rootNote] noteNameAsString], [[gFlatMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[gFlatMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[gFlatMinorChord rootNote] noteNameAsString], [[gFlatMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[gFlatMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[gFlatMinorChord rootNote] noteNameAsString], [[gFlatMinorChord fourthNote] noteNameAsString]);

    
    Chord *gSharpMinorChord = [[Chord alloc] initWithCifra:@"G#m(7M)"];
    STAssertEquals(@"G#", [[gSharpMinorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpMinorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gSharpMinorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gSharpMinorChord rootNote] noteNameAsString], [[gSharpMinorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gSharpMinorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gSharpMinorChord rootNote] noteNameAsString], [[gSharpMinorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[gSharpMinorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[gSharpMinorChord rootNote] noteNameAsString], [[gSharpMinorChord fourthNote] noteNameAsString]);

}

- (void) testChordCifraWithSixth {
    Chord *aMajorChord = [[Chord alloc] initWithCifra:@"A6"];
    STAssertEquals(@"A", [[aMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@",[[aMajorChord rootNote] noteNameAsString],  [[aMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[aMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@",[[aMajorChord rootNote] noteNameAsString],  [[aMajorChord fourthNote] noteNameAsString]);

    
    Chord *aFlatMajorChord = [[Chord alloc] initWithCifra:@"Ab6"];
    STAssertEquals(@"G#", [[aFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[aFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@",[[aFlatMajorChord rootNote] noteNameAsString],  [[aFlatMajorChord fourthNote] noteNameAsString]);

    
    Chord *aSharpMajorChord = [[Chord alloc] initWithCifra:@"A#6"];
    STAssertEquals(@"A#", [[aSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[aSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[aSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[aSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@",[[aSharpMajorChord rootNote] noteNameAsString],  [[aSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *bMajorChord = [[Chord alloc] initWithCifra:@"B6"];
    STAssertEquals(@"B", [[bMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[bMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[bMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[bMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[bMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@",[[bMajorChord rootNote] noteNameAsString],  [[bMajorChord fourthNote] noteNameAsString]);

    
    Chord *bFlatMajorChord = [[Chord alloc] initWithCifra:@"Bb6"];
    STAssertEquals(@"A#", [[bFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[bFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[bFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@",[[bFlatMajorChord rootNote] noteNameAsString],  [[bFlatMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *cMajorChord = [[Chord alloc] initWithCifra:@"C6"];
    STAssertEquals(@"C", [[cMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[cMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@",[[cMajorChord rootNote] noteNameAsString],  [[cMajorChord fourthNote] noteNameAsString]);

    
    Chord *cSharpMajorChord = [[Chord alloc] initWithCifra:@"C#6"];
    STAssertEquals(@"C#", [[cSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[cSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@",[[cSharpMajorChord rootNote] noteNameAsString],  [[cSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *cFlatMajorChord = [[Chord alloc] initWithCifra:@"Cb6"];
    STAssertEquals(@"B", [[cFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[cFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[cFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[cFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@",[[cFlatMajorChord rootNote] noteNameAsString],  [[cFlatMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *dMajorChord = [[Chord alloc] initWithCifra:@"D6"];
    STAssertEquals(@"D", [[dMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[dMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@",[[dMajorChord rootNote] noteNameAsString],  [[dMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *dSharpMajorChord = [[Chord alloc] initWithCifra:@"D#6"];
    STAssertEquals(@"D#", [[dSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[dSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[dSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@",[[dSharpMajorChord rootNote] noteNameAsString],  [[dSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *dFlatMajorChord = [[Chord alloc] initWithCifra:@"Db6"];
    STAssertEquals(@"C#", [[dFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[dFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[dFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[dFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@",[[dFlatMajorChord rootNote] noteNameAsString],  [[dFlatMajorChord fourthNote] noteNameAsString]);

    
    Chord *eMajorChord = [[Chord alloc] initWithCifra:@"E6"];
    STAssertEquals(@"E", [[eMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[eMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[eMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[eMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@",[[eMajorChord rootNote] noteNameAsString],  [[eMajorChord fourthNote] noteNameAsString]);

    
    Chord *eFlatMajorChord = [[Chord alloc] initWithCifra:@"Eb6"];
    STAssertEquals(@"D#", [[eFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Eb but was: %@", [[eFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[eFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[eFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@",[[eFlatMajorChord rootNote] noteNameAsString],  [[eFlatMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *fMajorChord = [[Chord alloc] initWithCifra:@"F6"];
    STAssertEquals(@"F", [[fMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[fMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@",[[fMajorChord rootNote] noteNameAsString],  [[fMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *fSharpMajorChord = [[Chord alloc] initWithCifra:@"F#6"];
    STAssertEquals(@"F#", [[fSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[fSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[fSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[fSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@",[[fSharpMajorChord rootNote] noteNameAsString],  [[fSharpMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *gMajorChord = [[Chord alloc] initWithCifra:@"G6"];
    STAssertEquals(@"G", [[gMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"E", [[gMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@",[[gMajorChord rootNote] noteNameAsString],  [[gMajorChord fourthNote] noteNameAsString]);

    
    
    Chord *gSharpMajorChord = [[Chord alloc] initWithCifra:@"G#6"];
    STAssertEquals(@"G#", [[gSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[gSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[gSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@",[[gSharpMajorChord rootNote] noteNameAsString],  [[gSharpMajorChord fourthNote] noteNameAsString]);

    
    Chord *gFlatMajorChord = [[Chord alloc] initWithCifra:@"Gb6"];
    STAssertEquals(@"F#", [[gFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Gb but was: %@", [[gFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[gFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[gFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@",[[gFlatMajorChord rootNote] noteNameAsString],  [[gFlatMajorChord fourthNote] noteNameAsString]);

}

- (void) testChordCifraWithFlatFifth {
    Chord *aMajorChord = [[Chord alloc] initWithCifra:@"A7(b5)"];
    STAssertEquals(@"A", [[aMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C#", [[aMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C# but was: %@", [[aMajorChord rootNote] noteNameAsString], [[aMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D#", [[aMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@",[[aMajorChord rootNote] noteNameAsString],  [[aMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G", [[aMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@",[[aMajorChord rootNote] noteNameAsString],  [[aMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *aFlatMajorChord = [[Chord alloc] initWithCifra:@"Ab7(b5)"];
    STAssertEquals(@"G#", [[aFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[aFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[aFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@", [[aFlatMajorChord rootNote] noteNameAsString], [[aFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[aFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@",[[aFlatMajorChord rootNote] noteNameAsString],  [[aFlatMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *aSharpMajorChord = [[Chord alloc] initWithCifra:@"A#7(b5)"];
    STAssertEquals(@"A#", [[aSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[aSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[aSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[aSharpMajorChord rootNote] noteNameAsString], [[aSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[aSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@",[[aSharpMajorChord rootNote] noteNameAsString],  [[aSharpMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *bMajorChord = [[Chord alloc] initWithCifra:@"B7(b5)"];
    STAssertEquals(@"B", [[bMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[bMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[bMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[bMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@", [[bMajorChord rootNote] noteNameAsString], [[bMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[bMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@",[[bMajorChord rootNote] noteNameAsString],  [[bMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *bFlatMajorChord = [[Chord alloc] initWithCifra:@"Bb7(b5)"];
    STAssertEquals(@"A#", [[bFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be A# but was: %@", [[bFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D", [[bFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"E", [[bFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@", [[bFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"G#", [[bFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@",[[bFlatMajorChord rootNote] noteNameAsString],  [[bFlatMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *cMajorChord = [[Chord alloc] initWithCifra:@"C7(b5)"];
    STAssertEquals(@"C", [[cMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C but was: %@", [[cMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be E but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[cMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[cMajorChord rootNote] noteNameAsString], [[cMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@",[[cMajorChord rootNote] noteNameAsString],  [[cMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *cSharpMajorChord = [[Chord alloc] initWithCifra:@"C#7(b5)"];
    STAssertEquals(@"C#", [[cSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[cSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[cSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[cSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[cSharpMajorChord rootNote] noteNameAsString], [[cSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[cSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@",[[cSharpMajorChord rootNote] noteNameAsString],  [[cSharpMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *cFlatMajorChord = [[Chord alloc] initWithCifra:@"Cb7(b5)"];
    STAssertEquals(@"B", [[cFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be B but was: %@", [[cFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"F", [[cFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[cFlatMajorChord rootNote] noteNameAsString], [[bFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[cFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@",[[cFlatMajorChord rootNote] noteNameAsString],  [[cFlatMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *dMajorChord = [[Chord alloc] initWithCifra:@"D7(b5)"];
    STAssertEquals(@"D", [[dMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D but was: %@", [[dMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F#", [[dMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F# but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G#", [[dMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G# but was: %@", [[dMajorChord rootNote] noteNameAsString], [[dMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C", [[dMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@",[[dMajorChord rootNote] noteNameAsString],  [[dMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *dSharpMajorChord = [[Chord alloc] initWithCifra:@"D#7(b5)"];
    STAssertEquals(@"D#", [[dSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be D# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[dSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[dSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[dSharpMajorChord rootNote] noteNameAsString], [[dSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[dSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@",[[dSharpMajorChord rootNote] noteNameAsString],  [[dSharpMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *dFlatMajorChord = [[Chord alloc] initWithCifra:@"Db7(b5)"];
    STAssertEquals(@"C#", [[dFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be C# but was: %@", [[dFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"F", [[dFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be F but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[cFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"G", [[dFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be G but was: %@", [[dFlatMajorChord rootNote] noteNameAsString], [[dFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"B", [[dFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@",[[dFlatMajorChord rootNote] noteNameAsString],  [[dFlatMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *eMajorChord = [[Chord alloc] initWithCifra:@"E7(b5)"];
    STAssertEquals(@"E", [[eMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be E but was: %@", [[eMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G#", [[eMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G# but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A#", [[eMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A# but was: %@", [[eMajorChord rootNote] noteNameAsString], [[eMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D", [[eMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@",[[eMajorChord rootNote] noteNameAsString],  [[eMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *eFlatMajorChord = [[Chord alloc] initWithCifra:@"Eb7(b5)"];
    STAssertEquals(@"D#", [[eFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Eb but was: %@", [[eFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"G", [[eFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be G but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"A", [[eFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@", [[eFlatMajorChord rootNote] noteNameAsString], [[eFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"C#", [[eFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@",[[eFlatMajorChord rootNote] noteNameAsString],  [[eFlatMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *fMajorChord = [[Chord alloc] initWithCifra:@"F7(b5)"];
    STAssertEquals(@"F", [[fMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F but was: %@", [[fMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A", [[fMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"B", [[fMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be B but was: %@", [[fMajorChord rootNote] noteNameAsString], [[fMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"D#", [[fMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be D# but was: %@",[[fMajorChord rootNote] noteNameAsString],  [[fMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *fSharpMajorChord = [[Chord alloc] initWithCifra:@"F#7(b5)"];
    STAssertEquals(@"F#", [[fSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be F# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[fSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[fSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[fSharpMajorChord rootNote] noteNameAsString], [[fSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"E", [[fSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@",[[fSharpMajorChord rootNote] noteNameAsString],  [[fSharpMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *gMajorChord = [[Chord alloc] initWithCifra:@"G7(b5)"];
    STAssertEquals(@"G", [[gMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G but was: %@", [[gMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"B", [[gMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be B but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[gMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C# but was: %@", [[gMajorChord rootNote] noteNameAsString], [[gMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F", [[gMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F but was: %@",[[gMajorChord rootNote] noteNameAsString],  [[gMajorChord fourthNote] noteNameAsString]);
    
    
    
    Chord *gSharpMajorChord = [[Chord alloc] initWithCifra:@"G#7(b5)"];
    STAssertEquals(@"G#", [[gSharpMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be G# but was: %@", [[gSharpMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"C", [[gSharpMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be C but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[gSharpMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be D but was: %@", [[gSharpMajorChord rootNote] noteNameAsString], [[gSharpMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"F#", [[gSharpMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@",[[gSharpMajorChord rootNote] noteNameAsString],  [[gSharpMajorChord fourthNote] noteNameAsString]);
    
    
    Chord *gFlatMajorChord = [[Chord alloc] initWithCifra:@"Gb7(b5)"];
    STAssertEquals(@"F#", [[gFlatMajorChord rootNote] noteNameAsString], @"root note of %@ major scale should be Gb but was: %@", [[gFlatMajorChord rootNote] noteNameAsString]);
    STAssertEquals(@"A#", [[gFlatMajorChord secondNote] noteNameAsString], @"second note of %@ major scale should be A# but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord secondNote] noteNameAsString]);
    STAssertEquals(@"C", [[gFlatMajorChord thirdNote] noteNameAsString], @"third note of %@ major scale should be C but was: %@", [[gFlatMajorChord rootNote] noteNameAsString], [[gFlatMajorChord thirdNote] noteNameAsString]);
    STAssertEquals(@"E", [[gFlatMajorChord fourthNote] noteNameAsString], @"third note of %@ major scale should be E but was: %@",[[gFlatMajorChord rootNote] noteNameAsString],  [[gFlatMajorChord fourthNote] noteNameAsString]);
    
}

- (void) testChordDiminished {
    Chord *cDimChord = [[Chord alloc] initWithCifra:@"Cdim"];
    STAssertEquals(@"C", [[cDimChord rootNote] noteNameAsString], @"root note of %@ of chord should be C but was: %@", [[cDimChord rootNote] noteNameAsString]);
    STAssertEquals(@"D#", [[cDimChord secondNote] noteNameAsString], @"second note of %@ major scale should be D# but was: %@", [[cDimChord rootNote] noteNameAsString], [[cDimChord secondNote] noteNameAsString]);
    STAssertEquals(@"F#", [[cDimChord thirdNote] noteNameAsString], @"third note of %@ major scale should be F# but was: %@", [[cDimChord rootNote] noteNameAsString], [[cDimChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A", [[cDimChord fourthNote] noteNameAsString], @"third note of %@ major scale should be A but was: %@",[[cDimChord rootNote] noteNameAsString],  [[cDimChord fourthNote] noteNameAsString]);
}

- (void) testChordWithNine {
    Chord *cNineChord = [[Chord alloc] initWithCifra:@"C7(9)"];
    STAssertEquals(@"C", [[cNineChord rootNote] noteNameAsString], @"root note of %@ of chord should be C but was: %@", [[cNineChord rootNote] noteNameAsString], [[cNineChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cNineChord secondNote] noteNameAsString], @"second note of %@ of chord should be E but was: %@", [[cNineChord rootNote] noteNameAsString], [[cNineChord secondNote] noteNameAsString]);
    STAssertEquals(@"D", [[cNineChord thirdNote] noteNameAsString], @"third note of %@ of chord should be D but was: %@", [[cNineChord rootNote] noteNameAsString], [[cNineChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cNineChord fourthNote] noteNameAsString], @"fourth note of %@ of chord should be A# but was: %@", [[cNineChord rootNote] noteNameAsString], [[cNineChord fourthNote] noteNameAsString]);
    
    Chord *cFlatNineChord = [[Chord alloc] initWithCifra:@"C7(b9)"];
    STAssertEquals(@"C", [[cFlatNineChord rootNote] noteNameAsString], @"root note of %@ of chord should be C but was: %@", [[cFlatNineChord rootNote] noteNameAsString], [[cFlatNineChord rootNote] noteNameAsString]);
    STAssertEquals(@"E", [[cFlatNineChord secondNote] noteNameAsString], @"second note of %@ of chord should be E but was: %@", [[cFlatNineChord rootNote] noteNameAsString], [[cFlatNineChord secondNote] noteNameAsString]);
    STAssertEquals(@"C#", [[cFlatNineChord thirdNote] noteNameAsString], @"third note of %@ of chord should be C# but was: %@", [[cFlatNineChord rootNote] noteNameAsString], [[cFlatNineChord thirdNote] noteNameAsString]);
    STAssertEquals(@"A#", [[cFlatNineChord fourthNote] noteNameAsString], @"fourth note of %@ of chord should be A# but was: %@", [[cFlatNineChord rootNote] noteNameAsString], [[cFlatNineChord fourthNote] noteNameAsString]);

}

- (void) testChordCifraBuilder {
    Chord *c = [[Chord alloc] initWithCifra:@"C7M"];
    STAssertTrue([[c cifra] isEqualToString:@"C7M"], @"Chord should be C7M but was %@", [c cifra]);

    c = [[Chord alloc] initWithCifra:@"Am7"];
    STAssertTrue([[c cifra] isEqualToString:@"Am7"], @"Chord should be Am7 but was %@", [c cifra]);

    c = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
    STAssertTrue([[c cifra] isEqualToString:@"Bm7(b5)"], @"Chord should be Bm7(b5) but was %@", [c cifra]);

    c = [[Chord alloc] initWithCifra:@"Dm(7M)"];
    STAssertTrue([[c cifra] isEqualToString:@"Dm(7M)"], @"Chord should be Dm(7M) but was %@", [c cifra]);
}

- (void) testChordEnarmony {
    Chord *c = [[Chord alloc] initWithCifra:@"C7M"];
    
    NSArray *chordVariations = [c buildChordVariations];
    STAssertTrue( [chordVariations count] == 3, @"Chord variation for tetrad should have 24 variations, actual: %d", [chordVariations count]);
}
@end

