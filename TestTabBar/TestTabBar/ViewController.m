//
//  ViewController.m
//  TestTabBar
//
//  Created by meibo-design on 29/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *text;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    float width = [[UIScreen mainScreen]bounds].size.width;
    
    UIScrollView *bottomScrollerView = [[UIScrollView alloc]initWithFrame:CGRectMake(0,64,width,500)];
    [bottomScrollerView setBackgroundColor:[UIColor redColor]];
    [bottomScrollerView setContentSize:CGSizeMake(width, 600)];
//    bottomScrollerView.showsVerticalScrollIndicator = YES;
//    [bottomScrollerView setContentInset:UIEdgeInsetsMake(50, 10, 10, 10)];
    [[self view]addSubview:bottomScrollerView];
    
    UISearchBar *searchView = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, width, 60)];
    searchView.placeholder = @"输入搜索内容";
    searchView.barTintColor = [UIColor whiteColor];
    searchView.prompt = @"提示";
    searchView.backgroundColor = [UIColor clearColor];
    [bottomScrollerView insertSubview:searchView atIndex:0];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0,30,width,500)];
    [button setBackgroundColor:[UIColor blackColor]];
    [button setAlpha:0.2];
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [searchView setInputAccessoryView:button];
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, width, 40)];
//    label.text = @"测试";
//    label.backgroundColor = [UIColor blueColor];
    
//    [bottomScrollerView insertSubview:label belowSubview:searchView];
    
//    NSLog(@"label index %ld",[[bottomScrollerView subviews]indexOfObject:searchView]);
    
    UIPageControl *pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(200, 60, 100, 20)];
    [pageControl addTarget:self action:@selector(pageTurn:) forControlEvents:UIControlEventValueChanged];
    pageControl.backgroundColor = [UIColor clearColor];
    pageControl.numberOfPages = 5;
    [bottomScrollerView addSubview:pageControl];
    
//    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc]init];
//    flow.minimumInteritemSpacing =5;
//    flow.minimumLineSpacing = 10;
//    flow.scrollDirection = UICollectionViewScrollDirectionVertical;
//    
//    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 100, width, 200) collectionViewLayout:flow];
//    collectionView.dataSource = self;
//    collectionView.delegate = self;
//    collectionView.showsVerticalScrollIndicator = FALSE;
//    
//    [bottomScrollerView addSubview:collectionView];
    text = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, 100, 20)];
    [text setBorderStyle:UITextBorderStyleRoundedRect];
    text.delegate = self;
    [bottomScrollerView addSubview:text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark textField
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    text.frame = CGRectMake(50, 80, 200, 50);
//    [self.view addSubview:text];
}
#pragma mark pageControl
-(void)pageTurn:(UIPageControl *)pageControl
{
    NSLog(@"pageControl's curPage is %ld",[pageControl currentPage]);
}

#pragma mark button
-(void)clickButton:(id)sender
{
    [[[[[[self view]subviews]objectAtIndex:0] subviews]objectAtIndex:0]resignFirstResponder];
}

#pragma mark search delegate
-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    
}

@end
