//
//  ViewController.h
//  MCMS
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"

@interface ViewController : UIViewController

@property MagicalCreature *editedCreature;
@property NSIndexPath *indexPathForEditedCreature;

@end

