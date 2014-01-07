//
//  ProductCell.m
//  194
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ProductCell.h"

@implementation ProductCell

//제품 정보를 셀로 반영
-(void)setProductInfo:(Product *)item
{
    //뷰에 반영
    self.productName.text = item.name;
    self.productPrice.text = item.price;
    self.productImage.image = [UIImage imageNamed:item.imageName];
}

@end
