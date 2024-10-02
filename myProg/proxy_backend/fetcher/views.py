'''
Author: Leo
Date: 2023-11-15 00:14:36
LastEditTime: 2023-11-16 20:17:57
FilePath: \proxy_backend\fetcher\views.py
Description: Leo的一些没用的代码
'''
from django.shortcuts import render
from .tasks import *
from .db_orm import DB_operation
from django.http import JsonResponse

from proxy_backend.celery import celery_app
from celery.result import AsyncResult
# Create your views here.

# 实例化一个数据库事务操作对象
db_op = DB_operation()
task1 = None
task2 = None

# 随机获取一个可用代理，如果没有可用代理则返回空白
def fetch_random():
    proxies = db_op.getValidatedRandom(1)
    if len(proxies) > 0:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    else:
        return ''    

#api 获取协议为http的一条结果
def fetch_http():
    proxies =db_op.get_by_protocol('http', 1)
    if len(proxies) > 0:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    else:
        return ''

#api 获取协议为http的全部结果
def fetch_http_all():
    proxies = db_op.get_by_protocol('http', -1)
    if len(proxies) == 1:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    elif len(proxies) > 1:
        proxy_list = []
        for p in proxies:
            proxy_list.append(f'{p.protocol}://{p.ip}:{p.port}')
        return ','.join(proxy_list)
    else:
        return ''
        
#api 获取协议为https的一条结果
def fetch_https():
    proxies =db_op.get_by_protocol('https', 1)
    if len(proxies) > 0:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    else:
        return ''

#api 获取协议为https的全部结果
def fetch_https_all():
    proxies = db_op.get_by_protocol('https', -1)
    if len(proxies) == 1:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    elif len(proxies) > 1:
        proxy_list = []
        for p in proxies:
            proxy_list.append(f'{p.protocol}://{p.ip}:{p.port}')
        return ','.join(proxy_list)
    else:
        return ''
                
#api 获取协议为socks4的一条结果
def fetch_socks4():
    proxies =db_op.get_by_protocol('socks4', 1)
    if len(proxies) > 0:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    else:
        return ''

#api 获取协议为socks4的全部结果
def fetch_socks4_all():
    proxies = db_op.get_by_protocol('socks4', -1)
    if len(proxies) == 1:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    elif len(proxies) > 1:
        proxy_list = []
        for p in proxies:
            proxy_list.append(f'{p.protocol}://{p.ip}:{p.port}')
        return ','.join(proxy_list)
    else:
        return ''
        
#api 获取协议为socks5的一条结果
def fetch_socks5():
    proxies =db_op.get_by_protocol('socks5', 1)
    if len(proxies) > 0:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    else:
        return ''

#api 获取协议为socks5的全部结果
def fetch_socks5_all():
    proxies = db_op.get_by_protocol('socks5', -1)
    if len(proxies) == 1:
        p = proxies[0]
        return f'{p.protocol}://{p.ip}:{p.port}'
    elif len(proxies) > 1:
        proxy_list = []
        for p in proxies:
            proxy_list.append(f'{p.protocol}://{p.ip}:{p.port}')
        return ','.join(proxy_list)
    else:
        return ''   

# 获取所有可用代理，如果没有可用代理则返回空白
def fetch_all():
    proxies = db_op.getValidatedRandom(-1)
    proxies = [f'{p.protocol}://{p.ip}:{p.port}' for p in proxies]
    return ','.join(proxies)

################ 以下API主要给网页使用 ################
################# 需要有request参数 #################

################# 代理节点相关 #################
# 获取代理节点状态
def proxies_status(request):
    proxies = db_op.getValidatedRandom(-1)
    proxies = sorted(proxies, key=lambda p: f'{p.protocol}://{p.ip}:{p.port}', reverse=True)
    proxies = [p.to_dict() for p in proxies]

    status = db_op.getProxiesStatus()

    return JsonResponse(dict(
        success=True,
        proxies=proxies,
        **status
    ))

################# 爬取器相关 #################
# 获取爬取器状态
def fetchers_status(request):
    proxies = db_op.getValidatedRandom(-1) # 获取所有可用代理
    fetchers = db_op.getAllFetchers()
    fetchers = [f.to_dict() for f in fetchers]

    for f in fetchers:
        f['validated_cnt'] = len([_ for _ in proxies if _.fetcher_name == f['name']])
        f['in_db_cnt'] = db_op.getProxyCount(f['name'])
    
    return JsonResponse(dict(
        success=True,
        fetchers=fetchers
    ))

# 清空爬取器状态
def clear_fetchers_status(request):
    db_op.pushClearFetchersStatus()
    return JsonResponse(dict(success=True))

# 设置是否启用特定爬取器,?name=str,enable=0/1
def fetcher_enable(request):
    name = request.GET['name']
    enable = request.GET['enable']
    if enable == '1':
        db_op.pushFetcherEnable(name, True)
    else:
        db_op.pushFetcherEnable(name, False)
    return JsonResponse(dict(success=True))

################# 控制爬取器&验证器相关 #################
# 开始运行
def start_fetch_and_validate(request):
    global task1
    global task2
    
    task_arrange = request.GET['f']
    if task_arrange == '1':
        # 启动爬取器
        task1 = shared_run_fetcher.apply_async()
        print("爬取器开启成功！##################")
    elif task_arrange == '2':
        # 启动验证器
        task2 = shared_run_validator.apply_async()
        print("验证器开启成功！##################")
    elif task_arrange == '0':
        # 启动爬取器和验证器
        task1 = shared_run_fetcher.delay()
        task2 = shared_run_validator.delay()
        print("爬取器和验证器开启成功！##################")

    return JsonResponse(dict(success=True))

def get_task_id_by_name(task_name):
    # 使用inspect来获取活跃任务的列表  
    i = celery_app.control.inspect()  
    active_tasks = i.active()  
    if active_tasks == None:
        return -1
    
    # 通过任务名查找任务ID  
    task_id = None  
    for worker, tasks in active_tasks.items():  
        for task in tasks:  
            if task['name'] == task_name:  
                task_id = task['id']  
                break  
    if task_id:
        return task_id
    
# 撤销任务并不是一定能够立即生效，特别是对于已经在执行中的任务。
# Celery会尽力将撤销请求发送到工作者（worker），但是否成功还取决于工作者的状态和网络通信等因素。
def stop_fetcher():
    # fetcher_task_id = get_task_id_by_name('fetcher.tasks.shared_run_fetcher')
    # if fetcher_task_id == -1:
    #     return False
    # celery_app.control.revoke(fetcher_task_id, terminate=True)
    # return True
    if task1 == None:
        return False
    celery_app.control.revoke(task1.id, terminate=True)
    return True
    # celery_app.control.revoke(fetcher_id, terminate=True)

def stop_validator():
    # validator_task_id = get_task_id_by_name('fetcher.tasks.shared_run_validator')
    # if validator_task_id == -1:
    #     return False
    # celery_app.control.revoke(validator_task_id, terminate=True)
    if task2 == None:
        return False
    celery_app.control.revoke(task2.id, terminate=True)
    return True
    # celery_app.control.revoke(validator_id, terminate=True)

# 停止运行
def end_fetch_and_validate(request):
    task_arrange = request.GET['f']
    is_success = False
    if task_arrange == '0':
        # 停止爬取器
        if stop_fetcher():
            is_success = True
            print("爬取器停止成功！##################")
    elif task_arrange == '2':
        # 停止验证器
        if stop_validator():
            is_success = True
            print("验证器停止成功！##################")
    elif task_arrange == '0':
        # 停止爬取器和验证器
        if stop_fetcher() & stop_validator():
            is_success = True
            print("爬取器和验证器停止成功！##################")
    if is_success:
        return JsonResponse(dict(success=True))
    else:
        return JsonResponse(dict(success=False))
    
def get_tasks_status(request):
    # global task1
    # global task2

    fetcher_task_id = get_task_id_by_name('fetcher.tasks.shared_run_fetcher')
    validator_task_id = get_task_id_by_name('fetcher.tasks.shared_run_validator')
    fetcher_result = AsyncResult(fetcher_task_id)
    validator_result = AsyncResult(validator_task_id)

    if task1 == None:
        fetcher_status = '还未运行'
    elif task1.status == 'PENDING':
        fetcher_status = '运行中'
    else:
        fetcher_status = '已停止'
        
    if task2 == None:
        validator_status = '还未运行'
    elif task2.status == 'PENDING':
        validator_status = '运行中'
    else:
        validator_status = '已停止'

    ret = [
        {'type': 'fetcher', 'status': fetcher_status},
        {'type': 'validator', 'status': validator_status}
    ]
    return JsonResponse(dict(
        success=True,
        data=ret
    ))

############# 其他 ################

# 跨域支持，主要是在开发网页端的时候需要使用
# def after_request(resp):
#     ALLOWED_ORIGIN = ['0.0.0.0', '127.0.0.1', 'localhost']
#     origin = request.headers.get('origin', None)
#     if origin is not None:
#         for item in ALLOWED_ORIGIN:
#             if item in origin:
#                 resp.headers['Access-Control-Allow-Origin'] = origin
#                 resp.headers['Access-Control-Allow-Credentials'] = 'true'
#     return resp
# app.after_request(after_request)