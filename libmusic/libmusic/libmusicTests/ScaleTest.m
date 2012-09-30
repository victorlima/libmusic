//
//  ScaleTest.m
//  libmusic
//
//  Created by Victor Lima on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScaleTest.h"
#import "Note.h"
#import "Scale.h"
#import "Chord.h"

@implementation ScaleTest


- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testNoteNameAsString
{
    Note *a = [[Note alloc] initWithNote:A];
    STAssertEquals(@"A", [a noteNameAsString], @"note name should be A but was: %@", [a noteNameAsString]);
    
    Note *aSharp = [[Note alloc] initWithNote:ASHARP];
    STAssertEquals(@"A#", [aSharp noteNameAsString], @"note name should be A# but was: %@", [aSharp noteNameAsString]);
    
    Note *b = [[Note alloc] initWithNote:B];
    STAssertEquals(@"B", [b noteNameAsString], @"note name should be B but was: %@", [b noteNameAsString]);
    
    Note *c = [[Note alloc] initWithNote:C];
    STAssertEquals(@"C", [c noteNameAsString], @"note name should be C but was: %@", [c noteNameAsString]);
    
    Note *cSharp = [[Note alloc] initWithNote:CSHARP];
    STAssertEquals(@"C#", [cSharp noteNameAsString], @"note name should be C# but was: %@", [cSharp noteNameAsString]);
    
    Note *d = [[Note alloc] initWithNote:D];
    STAssertEquals(@"D", [d noteNameAsString], @"note name should be D but was: %@", [d noteNameAsString]);
    
    Note *dSharp = [[Note alloc] initWithNote:DSHARP];
    STAssertEquals(@"D#", [dSharp noteNameAsString], @"note name should be D# but was: %@", [dSharp noteNameAsString]);
    
    Note *e = [[Note alloc] initWithNote:E];
    STAssertEquals(@"E", [e noteNameAsString], @"note name should be E but was: %@", [e noteNameAsString]);
    
    Note *f = [[Note alloc] initWithNote:F];
    STAssertEquals(@"F", [f noteNameAsString], @"note name should be F but was: %@", [f noteNameAsString]);
    
    Note *fSharp = [[Note alloc] initWithNote:FSHARP];
    STAssertEquals(@"F#", [fSharp noteNameAsString], @"note name should be F# but was: %@", [fSharp noteNameAsString]);
    
    Note *g = [[Note alloc] initWithNote:G];
    STAssertEquals(@"G", [g noteNameAsString], @"note name should be G but was: %@", [g noteNameAsString]);
    
    Note *gSharp = [[Note alloc] initWithNote:GSHARP];
    STAssertEquals(@"G#", [gSharp noteNameAsString], @"note name should be G# but was: %@", [gSharp noteNameAsString]);
}


- (void)testScaleNotesTypeEqualsNSArray
{
    Note *a = [[Note alloc] initWithNote:A];
    Scale *aScale = [[Scale alloc] initWithRootNote:a];
    NSArray *testScaleArray = [aScale scaleNotes];
    STAssertEquals(YES, [testScaleArray isKindOfClass:[NSArray class]], @"scale should be a NSArray object but was: %@", [testScaleArray class]); 
}

- (void)testChromaticlNotesScale
{
    Note *a = [[Note alloc] initWithNote:A];
    Scale *aKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:a];
    NSArray *testScaleArray = [aKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    int idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *aSharp = [[Note alloc] initWithNote:ASHARP];
    Scale *aSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:aSharp];
    testScaleArray = [aSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *b = [[Note alloc] initWithNote:B];
    Scale *bKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:b];
    testScaleArray = [bKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *c = [[Note alloc] initWithNote:C];
    Scale *cKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:c];
    testScaleArray = [cKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    Note *cSharp = [[Note alloc] initWithNote:CSHARP];
    Scale *cSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:cSharp];
    testScaleArray = [cSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *d = [[Note alloc] initWithNote:D];
    Scale *dKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:d];
    testScaleArray = [dKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *dSharp = [[Note alloc] initWithNote:DSHARP];
    Scale *dSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:dSharp];
    testScaleArray = [dSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *e = [[Note alloc] initWithNote:E];
    Scale *eKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:e];
    testScaleArray = [eKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *f = [[Note alloc] initWithNote:F];
    Scale *fKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:f];
    testScaleArray = [fKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *fSharp = [[Note alloc] initWithNote:FSHARP];
    Scale *fSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:fSharp];
    testScaleArray = [fSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *g = [[Note alloc] initWithNote:G];
    Scale *gKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:g];
    testScaleArray = [gKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *gSharp = [[Note alloc] initWithNote:GSHARP];
    Scale *gSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:FULL_CHROMATIC withRootNote:gSharp];
    testScaleArray = [gSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 12, @"full chromatic scale should have 12 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 7:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 8:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 9:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 10:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 11:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ full chromatic scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
}

- (void)testMajorScaleNotes
{
    Note *a = [[Note alloc] initWithNote:A];
    Scale *aKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:a];
    NSArray *testScaleArray = [aKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    int idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *aSharp = [[Note alloc] initWithNote:ASHARP];
    Scale *aSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:aSharp];
    testScaleArray = [aSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *b = [[Note alloc] initWithNote:B];
    Scale *bKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:b];
    testScaleArray = [bKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [b  noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *c = [[Note alloc] initWithNote:C];
    Scale *cKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:c];
    testScaleArray = [cKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *cSharp = [[Note alloc] initWithNote:CSHARP];
    Scale *cSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:cSharp];
    testScaleArray = [cSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *d = [[Note alloc] initWithNote:D];
    Scale *dKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:d];
    testScaleArray = [dKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *dSharp = [[Note alloc] initWithNote:DSHARP];
    Scale *dSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:dSharp];
    testScaleArray = [dSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *e = [[Note alloc] initWithNote:E];
    Scale *eKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:e];
    testScaleArray = [eKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *f = [[Note alloc] initWithNote:F];
    Scale *fKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:f];
    testScaleArray = [fKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *fSharp = [[Note alloc] initWithNote:FSHARP];
    Scale *fSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:fSharp];
    testScaleArray = [fSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *g = [[Note alloc] initWithNote:G];
    Scale *gKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:g];
    testScaleArray = [gKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *gSharp = [[Note alloc] initWithNote:GSHARP];
    Scale *gSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:gSharp];
    testScaleArray = [gSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"major scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ major scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
}

- (void)testMinorHarmonicScaleNotes
{
    Note *a = [[Note alloc] initWithNote:A];
    Scale *aKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:a];
    NSArray *testScaleArray = [aKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    int idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *aSharp = [[Note alloc] initWithNote:ASHARP];
    Scale *aSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:aSharp];
    testScaleArray = [aSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *b = [[Note alloc] initWithNote:B];
    Scale *bKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:b];
    testScaleArray = [bKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [b  noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *c = [[Note alloc] initWithNote:C];
    Scale *cKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:c];
    testScaleArray = [cKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *cSharp = [[Note alloc] initWithNote:CSHARP];
    Scale *cSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:cSharp];
    testScaleArray = [cSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *d = [[Note alloc] initWithNote:D];
    Scale *dKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:d];
    testScaleArray = [dKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *dSharp = [[Note alloc] initWithNote:DSHARP];
    Scale *dSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:dSharp];
    testScaleArray = [dSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *e = [[Note alloc] initWithNote:E];
    Scale *eKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:e];
    testScaleArray = [eKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *f = [[Note alloc] initWithNote:F];
    Scale *fKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:f];
    testScaleArray = [fKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *fSharp = [[Note alloc] initWithNote:FSHARP];
    Scale *fSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:fSharp];
    testScaleArray = [fSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *g = [[Note alloc] initWithNote:G];
    Scale *gKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:g];
    testScaleArray = [gKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *gSharp = [[Note alloc] initWithNote:GSHARP];
    Scale *gSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_HARMONIC_SCALE withRootNote:gSharp];
    testScaleArray = [gSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
}

- (void)testMinorNaturalScaleNotes
{
    Note *a = [[Note alloc] initWithNote:A];
    Scale *aKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:a];
    NSArray *testScaleArray = [aKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    int idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *aSharp = [[Note alloc] initWithNote:ASHARP];
    Scale *aSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:aSharp];
    testScaleArray = [aSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *b = [[Note alloc] initWithNote:B];
    Scale *bKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:b];
    testScaleArray = [bKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [b  noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *c = [[Note alloc] initWithNote:C];
    Scale *cKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:c];
    testScaleArray = [cKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *cSharp = [[Note alloc] initWithNote:CSHARP];
    Scale *cSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:cSharp];
    testScaleArray = [cSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *d = [[Note alloc] initWithNote:D];
    Scale *dKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:d];
    testScaleArray = [dKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *dSharp = [[Note alloc] initWithNote:DSHARP];
    Scale *dSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:dSharp];
    testScaleArray = [dSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *e = [[Note alloc] initWithNote:E];
    Scale *eKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:e];
    testScaleArray = [eKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *f = [[Note alloc] initWithNote:F];
    Scale *fKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:f];
    testScaleArray = [fKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *fSharp = [[Note alloc] initWithNote:FSHARP];
    Scale *fSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:fSharp];
    testScaleArray = [fSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *g = [[Note alloc] initWithNote:G];
    Scale *gKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:g];
    testScaleArray = [gKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *gSharp = [[Note alloc] initWithNote:GSHARP];
    Scale *gSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_NATURAL_SCALE withRootNote:gSharp];
    testScaleArray = [gSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
}


- (void)testMinorMelodicScaleNotes
{
    Note *a = [[Note alloc] initWithNote:A];
    Scale *aKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:a];
    NSArray *testScaleArray = [aKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    int idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [a noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *aSharp = [[Note alloc] initWithNote:ASHARP];
    Scale *aSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:aSharp];
    testScaleArray = [aSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [aSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *b = [[Note alloc] initWithNote:B];
    Scale *bKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:b];
    testScaleArray = [bKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [b  noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [b noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *c = [[Note alloc] initWithNote:C];
    Scale *cKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:c];
    testScaleArray = [cKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [c noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *cSharp = [[Note alloc] initWithNote:CSHARP];
    Scale *cSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:cSharp];
    testScaleArray = [cSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [cSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *d = [[Note alloc] initWithNote:D];
    Scale *dKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:d];
    testScaleArray = [dKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [d noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    Note *dSharp = [[Note alloc] initWithNote:DSHARP];
    Scale *dSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:dSharp];
    testScaleArray = [dSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [dSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *e = [[Note alloc] initWithNote:E];
    Scale *eKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:e];
    testScaleArray = [eKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [e noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *f = [[Note alloc] initWithNote:F];
    Scale *fKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:f];
    testScaleArray = [fKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [f noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *fSharp = [[Note alloc] initWithNote:FSHARP];
    Scale *fSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:fSharp];
    testScaleArray = [fSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [fSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    
    
    Note *g = [[Note alloc] initWithNote:G];
    Scale *gKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:g];
    testScaleArray = [gKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:A];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:C];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:D];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:E];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:FSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [g noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
    Note *gSharp = [[Note alloc] initWithNote:GSHARP];
    Scale *gSharpKeyFullChromaticScale = [[Scale alloc] initWithScaleType:MINOR_MELODIC_SCALE withRootNote:gSharp];
    testScaleArray = [gSharpKeyFullChromaticScale scaleNotes];
    
    STAssertTrue([testScaleArray count] == 7, @"minor scale should have 7 notes but has: %d", [testScaleArray count]);
    idx = 0;
    for( Note *actual in testScaleArray ) {
        Note *expected;
        switch (idx) {
            case 0:
                expected = [[Note alloc] initWithNote:GSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 1:
                expected = [[Note alloc] initWithNote:ASHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 2:
                expected = [[Note alloc] initWithNote:B];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 3:
                expected = [[Note alloc] initWithNote:CSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 4:
                expected = [[Note alloc] initWithNote:DSHARP];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 5:
                expected = [[Note alloc] initWithNote:F];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            case 6:
                expected = [[Note alloc] initWithNote:G];
                STAssertEquals([expected noteNameAsString], [actual noteNameAsString], @"%d note of %@ minor scale should %@ but was: %@", (idx + 1), 
                               [gSharp noteNameAsString], [expected noteNameAsString], [actual noteNameAsString] );
                break;
            default:
                break;
        }
        
        idx++;
    }
    
    
}

- (void) testNoteByIndexMacro 
{
    Note *a = [[Note alloc] initWithNote:A];
    
    int expected = 0;
    int actual = NOTE_BY_INDEX([a note]);
    
    STAssertEquals(expected, actual, @"note should be 12 but was: %d", actual);
    
    expected = 1;
    actual = NOTE_BY_INDEX(13);
    
    STAssertEquals(expected, actual, @"note should be 2 but was: %d", actual);
    
}

- (void) testScaleChordMajorScale {
    Scale *majorScale = [[Scale alloc] initWithScaleType:MAJOR_SCALE withRootNote:[[Note alloc] initWithNoteName:@"C"]];
    NSArray *scaleChord = [majorScale scaleChords];

    Chord *c = [scaleChord objectAtIndex:0];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"C7M"]], @"First note of Major Scale chords should be C7M");

    c = [scaleChord objectAtIndex:1];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"Dm7"]], @"First note of Major Scale chords should be Dm7");
    
    c = [scaleChord objectAtIndex:2];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"Em7"]], @"First note of Major Scale chords should be Em7");
    
    c = [scaleChord objectAtIndex:3];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"F7M"]], @"First note of Major Scale chords should be F7M");
    
    c = [scaleChord objectAtIndex:4];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"G7"]], @"First note of Major Scale chords should be G7");
    
    c = [scaleChord objectAtIndex:5];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"Am7"]], @"First note of Major Scale chords should be Am7");

    c = [scaleChord objectAtIndex:6];
    STAssertTrue([c isEqual:[[Chord alloc] initWithCifra:@"Bm7(b5)"]], @"First note of Major Scale chords should be Bm7(b5)");
    
}


@end
