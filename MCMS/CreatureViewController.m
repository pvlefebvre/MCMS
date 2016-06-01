//
//  CreatureViewController.m
//  MCMS
//
//  Created by Caleb Talbot on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *editTextField;
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.creature.name;
    
}

- (IBAction)onEditButtonPressed:(UIBarButtonItem *)sender {
    if([sender.title isEqualToString:@"Done"]){
        sender.title = @"Edit";
        self.editTextField.hidden = YES;
    }else{
        sender.title = @"Done";
        self.editTextField.hidden = NO;
        self.editTextField.text = self.creatureNameLabel.text;
    }
    
    
}
@end
