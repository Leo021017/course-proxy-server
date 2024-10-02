'''
Description: 
version: 
Author: Zhang Lingxin
Date: 2023-11-13 11:17:11
LastEditors: Zhang Lingxin
LastEditTime: 2023-11-13 11:51:05
'''
import json
import subprocess
from django.http import JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
import chardet

# Create your views here.

def main(request):
    return render(request, 'main.html')

@csrf_exempt
def run(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode())
        command = data.get('command', '')
        print('command: ', command)
    result = {'output': '','error': ''}
    
    if command != '':
        # 定义程序的路径和命令行参数  
        program_path = './rcontrol/client3.exe'  
        arguments = ['127.0.0.1', '8888']
        
        # 创建一个子进程来运行另一个程序，并将输入传递给该程序  
        process = subprocess.Popen([program_path] + arguments, stdin=subprocess.PIPE, stdout=subprocess.PIPE)  
        output, error = process.communicate(input=command.encode())
        print(output)
    
        # 检测输出编码并解码  
        detected = chardet.detect(output)  
        decoded_output = output.decode(detected['encoding'], errors='ignore') if output else ''  
    
        # 构建响应结果  
        result = {'output': decoded_output}
        print(result)
        if error:  
            result['error'] = error.decode(detected['encoding'], errors='ignore')  
      
    return JsonResponse(result)