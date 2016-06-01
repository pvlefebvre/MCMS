//
//  CreatureViewController.m
//  MCMS
//
//  Created by Caleb Talbot on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "CreatureViewController.h"
#import "ViewController.h"

@interface CreatureViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *editTextField;
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)onEditButtonPressed:(UIBarButtonItem *)sender {
    if([sender.title isEqualToString:@"Done"]){
        sender.title = @"Edit";
        self.editTextField.hidden = YES;
        self.descriptionTextView.editable = NO;
    }else{
        sender.title = @"Done";
        self.editTextField.hidden = NO;
        self.editTextField.text = self.creatureNameLabel.text;
        self.descriptionTextView.editable = YES;
    }
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    self.creature.name = self.editTextField.text;
    self.creatureNameLabel.text = self.creature.name;
    [self.editTextField resignFirstResponder];
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ViewController *dvc = segue.destinationViewController;
    dvc.editedCreature = self.creature;
    dvc.indexPathForEditedCreature = self.indexPath;
    
}
@end
