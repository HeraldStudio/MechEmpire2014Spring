###MechEmpire2014Spring用户中心文档

####1.用户登录

参照[用户中心文档][1]

####2.controller中获取登录用户信息

    if has_user_login? #判断是否有用户登录
    	@cardnum = current_user_info['cardnum']#获取用户一卡通号
    	@truename = current_user_info['truename']#获取用户姓名 
    	...
    else
    	...
    end
    
####3.用户退出

>post方式访问/session/logout即可




  [1]: https://github.com/HeraldStudio/herald_user_account/blob/master/README.md中心文档