//
//  ModesAnalysisTests.m
//  libmusic
//
//  Created by Victor Lima on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ModesAnalysisTests.h"

@implementation ModesAnalysisTests

- (void) testChordsModesArray {
  Scale *cScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"C"]];
                   
  [cScale buildIonianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"C"]];
  NSArray *modesArray = [ModesAnalysis chordsOfMode:IONIAN withScaleNotes:[cScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"IONIAN modes array should have 7 chords in it");
  
  Chord *actual = [modesArray objectAtIndex:0];
  Chord *expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of IONIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of IONIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Third chord of IONIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of IONIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of IONIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of IONIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of IONIAN mode should be %@, actual: %@", expected, actual );
  
  Scale *dScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"D"]];
  
  [dScale buildDorianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"D"]];
  modesArray = [ModesAnalysis chordsOfMode:DORIAN withScaleNotes:[dScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"DORIAN modes array should have 7 chords in it");
  
  actual = [modesArray objectAtIndex:0];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of DORIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of DORIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Third chord of DORIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of DORIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of DORIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of DORIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of DORIAN mode should be %@, actual: %@", expected, actual );

  
  Scale *eScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"E"]];
  
  [eScale buildPhrygianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"E"]];
  modesArray = [ModesAnalysis chordsOfMode:PHRYGIAN withScaleNotes:[eScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"PHRYGIAN modes array should have 7 chords in it");
  
  actual = [modesArray objectAtIndex:0];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Third chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of PHRYGIAN mode should be %@, actual: %@", expected, actual );
  
  
  Scale *fScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"F"]];
  
  [fScale buildLydianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"F"]];
  modesArray = [ModesAnalysis chordsOfMode:LYDIAN withScaleNotes:[fScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"LYDIAN modes array should have 7 chords in it");

  actual = [modesArray objectAtIndex:0];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of LYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of LYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Thirdchord of LYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of LYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of LYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of LYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of LYDIAN mode should be %@, actual: %@", expected, actual );
  

  Scale *gScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"G"]];
  
  [gScale buildMixolydianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"G"]];
  modesArray = [ModesAnalysis chordsOfMode:MIXOLYDIAN withScaleNotes:[gScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"MIXOLYDIAN modes array should have 7 chords in it");

  actual = [modesArray objectAtIndex:0];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Third chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  

  Scale *aScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"A"]];
  
  [aScale buildAeolianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"A"]];
  modesArray = [ModesAnalysis chordsOfMode:AEOLIAN withScaleNotes:[aScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"AEOLIAN modes array should have 7 chords in it");
  
  actual = [modesArray objectAtIndex:0];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Third chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );

  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of MIXOLYDIAN mode should be %@, actual: %@", expected, actual );

  
  Scale *bScale = [[Scale alloc] initWithRootNote:[[Note alloc] initWithNoteName:@"B"]];
  
  [bScale buildLocrianModeScaleForRootNote:[[Note alloc] initWithNoteName:@"B"]];
  modesArray = [ModesAnalysis chordsOfMode:LOCRIAN withScaleNotes:[bScale scaleNotes]];
  STAssertTrue([modesArray count] == 7, @"LOCRIAN modes array should have 7 chords in it");
  
  actual = [modesArray objectAtIndex:0];
  expected = [[Chord alloc] initWithCifra:@"Bm7(b5)"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"First chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:1];
  expected = [[Chord alloc] initWithCifra:@"C7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Second chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:2];
  expected = [[Chord alloc] initWithCifra:@"Dm7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Third chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:3];
  expected = [[Chord alloc] initWithCifra:@"Em7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fourth chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:4];
  expected = [[Chord alloc] initWithCifra:@"F7M"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Fifth chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:5];
  expected = [[Chord alloc] initWithCifra:@"G7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Sixth chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
  
  actual = [modesArray objectAtIndex:6];
  expected = [[Chord alloc] initWithCifra:@"Am7"];
  STAssertTrue([[expected cifra] isEqualToString:[actual cifra]], @"Seventh chord of LOCRIAN mode should be %@, actual: %@", expected, actual );
}

- (void) testBuildFullModesTable {
  NSArray *fullTable = [ModesAnalysis buildFullModesTable];
  STAssertTrue([fullTable count] == 84, @"Full modes table should have 84 entries, it actually has %d", [fullTable count] );
  
  Chord *chrd = [[Chord alloc] initWithCifra:@"Dm7"];
  [ModesAnalysis findsChordPositionInModes:chrd];
}

@end
