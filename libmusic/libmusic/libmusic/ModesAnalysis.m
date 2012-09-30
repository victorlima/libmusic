//
//  ModesAnalysis.m
//  libmusic
//
//  Created by Victor Lima on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ModesAnalysis.h"

@interface ModesAnalysis ( )
@end

@implementation ModesAnalysis

+ (NSArray *) chordsOfMode:(MODES)mode withScaleNotes:(NSArray *)scaleNotes {
  NSMutableArray *chordsArray = [[NSMutableArray alloc] initWithCapacity:7];
  Chord *c;
  switch (mode) {
    case IONIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      break;
    case DORIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      
      break;
    case PHRYGIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      break;
    case LYDIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      
      break;
    case MIXOLYDIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      break;
    case AEOLIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];

      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      break;
    case LOCRIAN:
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7(b5)", [scaleNotes objectAtIndex:0]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:1]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:2]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:3]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7M", [scaleNotes objectAtIndex:4]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@7", [scaleNotes objectAtIndex:5]]];
      [chordsArray addObject:c];
      
      c = [[Chord alloc] initWithCifra:[NSString stringWithFormat:@"%@m7", [scaleNotes objectAtIndex:6]]];
      [chordsArray addObject:c];
      break;
    default:
      break;
  }
  
  return chordsArray;
}

+ (BOOL) isChord:(Chord *)chord inMode:(MODES)mode {
//  NSArray *chords = [ModesAnalysis chordsOfMode:mode];
//  for( Chord *c in chords )
//    if( c == chord )
//      return YES;
//  
  return NO;
}

+ (NSString *) degreeOfChord:(Chord *)chord inMode:(MODES)mode {
//  if( [ModesAnalysis isChord:chord inMode:mode] ) {
//    NSArray *modesArray = [ModesAnalysis chordsOfMode:mode];
//
//    int i = 1;
//    for( Chord *c in modesArray ) {
//      if( c == chord )
//        return [NSString stringWithFormat:@"%d", i];
//      
//      i++;
//    }
//  }
//  
  return nil;
}

+ (NSString *) modeLegends:(MODES)mode {
  NSString *legend;
  switch (mode) {
    case IONIAN:
      legend = [NSString stringWithFormat:@"Não resolução do tritono com expectativa (I -> V7 -> I)"];
      break;
    case DORIAN:
      legend = [NSString stringWithFormat:@"Nota Característica: 6\n \
                                            Triades Caracteristicas: IIm e IV. Evitar VIdim\n \
                                            Tetrades Caracteristicas: IIm7, IV7, bVII7M. Evitar VIm7(b5)"];
      break;
    case PHRYGIAN:
      legend = [NSString stringWithFormat:@"Nota Caracteristica: b2\n \
                                            Triades Caracteristicas: bII, bVIIm. Evitar Vdim\n \
                                            Tetrades Caracteristicas: bII7M, bVIIm7. Evitar Vm7(b5), bIII7"];
      break;
    case LYDIAN:
      legend = [NSString stringWithFormat:@"Nota Caracteristica: #4\n \
                                            Triades Caracteristicas: II e VIIm. Evitar #IVdim\n \
                                            Tetrades Caracteristicas: II7, V7M, VIIm7. Evitar #IVm7(b5)"];
      break;
    case MIXOLYDIAN:
      legend = [NSString stringWithFormat:@"Nota Caracteristica: b7\n \
                                            Triades Caracteristicas: Vm, bVII. Evitar IIIdim.\n \
                                            Tetrades Caracteristicas: I7, Vm7, bVII7M. Evitar IIIm7(b5)."];
      break;
    case AEOLIAN:
      legend = [NSString stringWithFormat:@"Nota Caracteristica: b6\n \
                                            Triades Caracteristicas: IVm, bVI. Evitar IIdim\n \
                                            Tetrades Caracteristicas: IVm7, bVI7m, bVII7. Evitar IIm7(b5)."];
      break;
    case LOCRIAN:
      legend = [NSString stringWithFormat:@"Notas Caracteristicas: b2 e b6\n"];
      break;
      
    default:
      break;
  }
  
  return legend;
}

+ (NSArray *) buildFullModesTable {
  NSMutableArray *modesArray = [NSMutableArray arrayWithCapacity:84];
  for( int i = 0; i < MAX_NOTES; i++ ) {
    for( int j = 0; j < 7; j++ ) {
      Note *n = [[Note alloc] initWithNote:i];
      Scale *scale = [[Scale alloc] initWithRootNote:n];
      switch (j) {
        case IONIAN:
          [scale buildIonianModeScaleForRootNote:n];
          break;
        case DORIAN:
          [scale buildDorianModeScaleForRootNote:n];
          break;
        case PHRYGIAN:
          [scale buildPhrygianModeScaleForRootNote:n];
          break;
        case LYDIAN:
          [scale buildLydianModeScaleForRootNote:n];
          break;
        case MIXOLYDIAN:
          [scale buildMixolydianModeScaleForRootNote:n];
          break;
        case AEOLIAN:
          [scale buildAeolianModeScaleForRootNote:n];
          break;
        case LOCRIAN:
          [scale buildLocrianModeScaleForRootNote:n];
          break;
        default:
          break;
      }
      
      [modesArray addObject:[ModesAnalysis chordsOfMode:j withScaleNotes:[scale scaleNotes]]];
    }
  }
  
  return modesArray;
}

+ (NSString *) modeName:(MODES)mode {
  NSString *modeName;
  switch (mode) {
    case IONIAN:
      modeName = [NSString stringWithFormat:@"IONIAN"];
      break;
    case DORIAN:
      modeName = [NSString stringWithFormat:@"DORIAN"];
      break;
    case PHRYGIAN:
      modeName = [NSString stringWithFormat:@"PHRYGIAN"];
      break;
    case LYDIAN:
      modeName = [NSString stringWithFormat:@"LYDIAN"];
      break;
    case MIXOLYDIAN:
      modeName = [NSString stringWithFormat:@"MIXOLYDIAN"];
      break;
    case AEOLIAN:
      modeName = [NSString stringWithFormat:@"AEOLIAN"];
      break;
    case LOCRIAN:
      modeName = [NSString stringWithFormat:@"LOCRIAN"];
      break;
    default:
      break;
  }
  
  return modeName;
}

+ (NSArray *) findsChordPositionInModes:(Chord *)c {
  NSMutableArray *belongsToArray = [[NSMutableArray alloc] init];
  NSArray *fullModeTable = [ModesAnalysis buildFullModesTable];
  int i = 0;
  for( NSArray *modesArray in fullModeTable ) {
    int idx = [modesArray indexOfObject:c];
    if( idx != NSNotFound ) {
      NSMutableDictionary *dict = [NSMutableDictionary dictionary];
      Chord *rootChord = [modesArray objectAtIndex:0];
      NSString *str = [NSString stringWithFormat:@"%@ in %@ %@ mode", 
                       NOTE_DEGREE_ROMAN( idx ), 
                       [rootChord.rootNote noteNameAsString], 
                       [ModesAnalysis modeName:(i % 7)]];
      
      [dict setValue:str forKey:@"phrase"];
      [dict setValue:rootChord forKey:@"rootChord"];
      [dict setValue:[NSNumber numberWithInt:(i % 7)] forKey:@"mode"];
      
      [belongsToArray addObject:dict];
    }
    
    i++;
  }  
  
  return belongsToArray;
}



@end
