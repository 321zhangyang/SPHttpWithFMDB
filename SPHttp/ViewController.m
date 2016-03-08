//
//  ViewController.m
//  SPHttp
//
//  Created by 换一换 on 16/3/7.
//  Copyright © 2016年 张洋. All rights reserved.
//

#import "ViewController.h"
#import "SPHttp.h"
#define baseUrl @"http://api.beikeshushe.com/gateway.php"
#define ImageKey @"avatar"
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) UITableView *myTabelView;
@end

@implementation ViewController
-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
  
  
    
    [self request];
    
}


-(void)request
{
    
    
    
    NSDictionary *dic = @{@"method":@"readgroup.recommend_read_group",@"uid":@"33",@"p":@"1"};
    

    
    [SPHttp postREquestCacheUrlStr:baseUrl withDic:dic success:^(NSDictionary *requestDic, NSString *msg) {
       
    } failure:^(NSString *errorInfo) {
        
    }];
    

}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context

{NSLog(@"1111");
    
    if ([keyPath isEqualToString:@"fractionCompleted"] && [object isKindOfClass:[NSProgress class]]) {
        
        NSProgress *progress = (NSProgress *)object;
        
        NSLog(@"%@",progress);
        
        
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
