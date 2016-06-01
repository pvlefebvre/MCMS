//
//  ViewController.m
//  MCMS
//
//  Created by Paul Lefebvre on 6/1/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property NSMutableArray *creatures;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature1 = [[MagicalCreature alloc] init];
    creature1.name = @"Mike";
    MagicalCreature *creature2 = [[MagicalCreature alloc] init];
    creature2.name = @"Sully";
    MagicalCreature *creature3 = [[MagicalCreature alloc] init];
    creature3.name = @"Roz";
    
    self.creatures = [[NSMutableArray alloc] initWithObjects:creature1,creature2,creature3, nil];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creat = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creat.name;
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.creatures.count;
}



@end
