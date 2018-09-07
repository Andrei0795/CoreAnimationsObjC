//
//  TableViewController.m
//  Core Animation Demos ObjC
//
//  Created by Andrei Ionescu on 28/08/2018.
//  Copyright © 2018 Andrei Ionescu. All rights reserved.
//

#import "TableViewController.h"
#import "ClassicAnimationsViewController.h"

@interface TableViewController ()
@property (nonatomic, strong) NSMutableArray *list;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.list = [NSMutableArray array];
    [self.list addObject:[ClassicAnimationsViewController class]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [self.list[indexPath.row] displayName];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class class = self.list[indexPath.row];
    id controller = [[class alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}


@end
