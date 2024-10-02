
from . import views
from django.urls import path

urlpatterns = [
    path('start_fetch_and_validate', views.start_fetch_and_validate, name = 'start_fetch_and_validate'),
    path('end_fetch_and_validate', views.end_fetch_and_validate, name = 'end_fetch_and_validate'),
    path('get_tasks_status', views.get_tasks_status, name = 'get_tasks_status'),
    # path('get_result_by_taskid/', views.get_result_by_taskid, name = 'get_result_by_taskid'),
    # path('get_tasks_list/', views.get_tasks_list, name = 'get_tasks_list'),
    # 提供前端的接口
    path('fetchers_status', views.fetchers_status, name = 'fetchers_status'),
    path('clear_fetchers_status', views.clear_fetchers_status, name = 'clear_fetchers_status'),
    path('fetcher_enable', views.fetcher_enable, name = 'fetcher_enable'),
    path('proxies_status', views.proxies_status, name = 'proxies_status')
]