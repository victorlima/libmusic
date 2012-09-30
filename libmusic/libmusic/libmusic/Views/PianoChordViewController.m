//
//  PianoChordViewController.m
//  decomposer
//
//  Created by Victor Lima on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PianoChordViewController.h"

#define LINE_WIDTH 1
#define KEY_WIDTH 43
#define KEY_HEIGHT 150

#define HALF_STEP_BEGIN ( KEY_WIDTH * 0.7 )
#define HALF_STEP_KEY_HEIGHT ( KEY_HEIGHT * 0.7 )
#define HALF_STEP_KEY_WIDTH ( KEY_WIDTH * 0.7 ) 

#define DOT_WIDTH (KEY_WIDTH * 0.3 )
#define DOT_HEIGHT (KEY_WIDTH * 0.3 )

@interface PianoChordViewController ( ) {
  Chord *chord;
  
  IBOutlet UIView* c1;
  IBOutlet UIView* c1Indicator;
  IBOutlet UIView* cSharp1;
  IBOutlet UIView* cSharp1Indicator;
  IBOutlet UIView* d1;
  IBOutlet UIView* d1Indicator;
  IBOutlet UIView* dSharp1;
  IBOutlet UIView* dSharp1Indicator;
  IBOutlet UIView* e1;
  IBOutlet UIView* e1Indicator;
  IBOutlet UIView* f1;
  IBOutlet UIView* f1Indicator;
  IBOutlet UIView* fSharp1;
  IBOutlet UIView* fSharp1Indicator;
  IBOutlet UIView* g1;
  IBOutlet UIView* g1Indicator;
  IBOutlet UIView* gSharp1;
  IBOutlet UIView* gSharp1Indicator;
  IBOutlet UIView* a1;
  IBOutlet UIView* a1Indicator;
  IBOutlet UIView* aSharp1;
  IBOutlet UIView* aSharp1Indicator;
  IBOutlet UIView* b1;
  IBOutlet UIView* b1Indicator;

  IBOutlet UIView* c2;
  IBOutlet UIView* c2Indicator;
  IBOutlet UIView* cSharp2;
  IBOutlet UIView* cSharp2Indicator;
  IBOutlet UIView* d2;
  IBOutlet UIView* d2Indicator;
  IBOutlet UIView* dSharp2;
  IBOutlet UIView* dSharp2Indicator;
  IBOutlet UIView* e2;
  IBOutlet UIView* e2Indicator;
  IBOutlet UIView* f2;
  IBOutlet UIView* f2Indicator;
  IBOutlet UIView* fSharp2;
  IBOutlet UIView* fSharp2Indicator;
  IBOutlet UIView* g2;
  IBOutlet UIView* g2Indicator;
  IBOutlet UIView* gSharp2;
  IBOutlet UIView* gSharp2Indicator;
  IBOutlet UIView* a2;
  IBOutlet UIView* a2Indicator;
  IBOutlet UIView* aSharp2;
  IBOutlet UIView* aSharp2Indicator;
  IBOutlet UIView* b2;
  IBOutlet UIView* b2Indicator;

  IBOutlet UIView* c3;
  IBOutlet UIView* c3Indicator;
  IBOutlet UIView* cSharp3;
  IBOutlet UIView* cSharp3Indicator;
  IBOutlet UIView* d3;
  IBOutlet UIView* d3Indicator;
  IBOutlet UIView* dSharp3;
  IBOutlet UIView* dSharp3Indicator;
  IBOutlet UIView* e3;
  IBOutlet UIView* e3Indicator;
  IBOutlet UIView* f3;
  IBOutlet UIView* f3Indicator;
  IBOutlet UIView* fSharp3;
  IBOutlet UIView* fSharp3Indicator;
  IBOutlet UIView* g3;
  IBOutlet UIView* g3Indicator;
  IBOutlet UIView* gSharp3;
  IBOutlet UIView* gSharp3Indicator;
  IBOutlet UIView* a3;
  IBOutlet UIView* a3Indicator;
  IBOutlet UIView* aSharp3;
  IBOutlet UIView* aSharp3Indicator;
  IBOutlet UIView* b3;
  IBOutlet UIView* b3Indicator;
}


@end

@implementation PianoChordViewController

- (id)initWithChord:(Chord *)c
{
    self = [super initWithNibName:@"PianoChordView" bundle:nil];
    if (self) {
        chord = c;
    }
    
    return self;
}

-( void ) viewDidLoad
{
  [self drawChord];
}

-( void ) drawChord
{
  NSInteger noteIndex;
  for( int i = 0; i < 4; i++ )
  {
    switch (i)
    {
      case 0:
        noteIndex = [[chord rootNote] noteIndex];
        break;
      case 1:
        noteIndex = [[chord secondNote] noteIndex];
        break;
      case 2:
        noteIndex = [[chord thirdNote] noteIndex];
        break;
      case 3:
        noteIndex = [[chord fourthNote] noteIndex];
        break;
      default:
        break;
    }
  }

  switch( noteIndex )
  {
    case C:
      c1Indicator.hidden = NO;
      break;
    case CSHARP:
      cSharp1Indicator.hidden = NO;
      break;
    case D:
      d1Indicator.hidden = NO;
      break;
    case DSHARP:
      dSharp1Indicator.hidden = NO;
      break;
    case E:
      e1Indicator.hidden = NO;
      break;
    case F:
      f1Indicator.hidden = NO;
      break;
    case FSHARP:
      fSharp1Indicator.hidden = NO;
      break;
    case G:
      g1Indicator.hidden = NO;
      break;
    case GSHARP:
      gSharp1Indicator.hidden = NO;
      break;
    case A:
      a1Indicator.hidden = NO;
      break;
    case ASHARP:
      aSharp1Indicator.hidden = NO;
      break;
    case B:
      b1Indicator.hidden = NO;
      break;
      
    default:
      break;
  }

}


@end







