'''
Author: Leo
Date: 2023-11-15 10:15:53
LastEditTime: 2023-11-15 20:18:48
FilePath: \proxy_backend\fetcher\tasks.py
Description: Leo的一些没用的代码
'''
from celery import shared_task
from .runner import run_fetcher, run_validator

@shared_task
def shared_run_fetcher():
    run_fetcher.run_fetchers()
@shared_task
def shared_run_validator():
    run_validator.run_validators()