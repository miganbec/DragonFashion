//
//  ViewController.m
//  DragonFashion
//
//  Created by miganbec on 14/11/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource,  UITableViewDelegate>
@property NSMutableArray *dragons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *puffDragon = [[Dragon alloc] initWithName:@"Puff"];
    puffDragon.signatureClothingItem = @"Teddy";
    Dragon *smaug = [[Dragon alloc] initWithName:@"Smaug"];
    smaug.signatureClothingItem = @"High Hells";
    Dragon *falcorDragon = [[Dragon alloc] initWithName:@"Falcor"];
    falcorDragon.signatureClothingItem = @"Fedora";
    self.dragons = [NSMutableArray arrayWithObjects:puffDragon, smaug, falcorDragon, nil];
    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@", dragon.name);
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellId" forIndexPath:indexPath];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
