//
//  ViewController.m
//  194
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "ProductCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *data;
}

@end

@implementation ViewController

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
    
    //셀내용갱신
    Product *item = data[indexPath.row];
    [cell setProductInfo:item];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// 제품목록
    data = @[[Product Product:@"BaseBall" price:@"100" imageName:@"baseball.png"],
             [Product Product:@"BasketBall" price:@"200" imageName:@"basketball.png"],
             [Product Product:@"FootBall" price:@"250" imageName:@"football.png"],
             [Product Product:@"RugbyBall" price:@"300" imageName:@"rugbyball.png"],
             [Product Product:@"Wilson" price:@"999" imageName:@"volleyball.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
