# textDemo
Alter ios 最新的，完全是系统的就是在系统原生的上面简单封装了一下。


使用方法很简单直接看代码

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    __weak ViewController *ws = self;
    
    [SLAlertVC showVC:self message:@"第一个"];
    
    [SLAlertVC showVC:self
              message:@"第二个"
           confirmBtn:@"确定"
       handle_confirm:^(UIAlertAction *action) {
           
           ws.view.backgroundColor = [UIColor redColor];
    }];
 
    
    [SLAlertVC showVC:self
     preferredStyle:UIAlertControllerStyleActionSheet
              message:@"测试"
           confirmBtn:@"确定"
            cancelBtn:@"取消"
       handle_confirm:^(UIAlertAction *action) {
        
           [SLAlertVC showVC:ws message:@"第三个测试,确定"];
    } handle_cancel:^(UIAlertAction *action) {
        
        [SLAlertVC showVC:ws message:@"第三个测试,取消"];
    }];
    
    
    [SLAlertVC showVC:self
       preferredStyle:(UIAlertControllerStyleActionSheet)
              message:@"第四个"
           confirmBtn:@"扫一扫"
            cancelBtn:@"取消"
       handle_confirm:^(UIAlertAction *action) {
        
        [ws.navigationController pushViewController:[ScanCodeVC alloc] animated:YES];
    } handle_cancel:^(UIAlertAction *action) {
        
        [SLAlertVC showVC:ws message:@"第四个测试,取消"];
    }];
    
}

这里随便选择，就是类型有些不同。

