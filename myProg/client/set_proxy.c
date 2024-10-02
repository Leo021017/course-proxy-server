/*
 * @Author: Leo
 * @Date: 2023-12-19 21:12:40
 * @LastEditTime: 2023-12-19 23:13:33
 * @FilePath: \clientd:\课程\专业课\专业选修课\网络安全产品开发实践\课程设计-代理服务器\myProg\client\set_proxy.c
 * @Description: Leo的一些没用的代码
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
        char *logo = " __  __       _____                     \n\
|  \\/  |     |  __ \\                    \n\
| \\  / |_   _| |__) | __ _____  ___   _ \n\
| |\\/| | | | |  ___/ '__/ _ \\ \\/ / | | |\n\
| |  | | |_| | |   | | | (_) >  <| |_| |\n\
|_|  |_|\\__, |_|   |_|  \\___/_/\\_\\__,  |\n\
         __/ |                     __/ |\n\
        |___/                     |___/\n";

        char ip[16] = "127.0.0.1";
        char port[10] = "1111";
        FILE *file;
        char *filename = "MyProxy.bat";
        char str[100] = "set ProxyServer=socks://";

    while (1)
    {
        system("cls");
        printf("%s", logo);
        
        printf("Please input your option\n");
        printf("1. add proxy\n");
        printf("2. close proxy\n");
        printf("3. quit\n");

        int opt;
        scanf("%d", &opt);

        switch (opt)
        {
        case 1:
            system("cls");
            printf("%s", logo);
            // 打开文件，以追加写入模式
            file = fopen(filename, "wa");
            if (file == NULL) {
                printf("无法打开文件 %s\n", filename);
                return 1;
            }

            printf("Please input ip and port\n");
            printf("Usage: <IP> <port>\n");

            scanf("%s", &ip);
            scanf("%s", &port);

            strcat(str, ip);
            strcat(str, ":");
            strcat(str, port);
            strcat(str, "\n");

            printf("%s\n", str);
            
            // 写入三个命令到文件
            fprintf(file, "@echo off\n");
            // fprintf(file, "set ProxyServer=socks://127.0.0.1:8900\n");
            fprintf(file, str);
            fprintf(file, "for /f \"tokens=1,2,* \" %%%%i in ('REG QUERY \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyEnable ^| find /i \"ProxyEnable\"') do (set /A ProxyEnableValue=%%%%k)\n");
            fprintf(file, "if %%ProxyEnableValue%% equ 0 (\n");
            fprintf(file, "    echo=\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyEnable /t REG_DWORD /d 1 /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyServer /d \"%%ProxyServer%%\" /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyOverride /d \"*.local\" /f >nul 2>nul\n");
            fprintf(file, ") else if %%ProxyEnableValue%% equ 1 (\n");
            fprintf(file, "    echo=\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyEnable /t REG_DWORD /d 0 /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyServer /d \"\" /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyOverride /d \"\" /f >nul 2>nul\n");
            fprintf(file, ")\n");
            // fprintf(file, "pause >nul\n");
            // 关闭文件
            fclose(file);
            
            // 执行批处理文件
            system(filename);

            break;
        case 2:
            system("cls");
            printf("%s", logo);
            // printf("2ing");
            // 打开文件，以追加写入模式
            file = fopen(filename, "wa");
            if (file == NULL) {
                printf("无法打开文件 %s\n", filename);
                return 1;
            }

            strcat(str, ip);
            strcat(str, ":");
            strcat(str, port);
            strcat(str, "\n");

            printf("%s\n", str);
            
            // 写入三个命令到文件
            fprintf(file, "@echo off\n");
            // fprintf(file, "set ProxyServer=socks://127.0.0.1:8900\n");
            fprintf(file, str);
            fprintf(file, "for /f \"tokens=1,2,* \" %%%%i in ('REG QUERY \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyEnable ^| find /i \"ProxyEnable\"') do (set /A ProxyEnableValue=%%%%k)\n");
            fprintf(file, "if %%ProxyEnableValue%% equ 0 (\n");
            fprintf(file, "    echo=\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyEnable /t REG_DWORD /d 1 /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyServer /d \"%%ProxyServer%%\" /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyOverride /d \"*.local\" /f >nul 2>nul\n");
            fprintf(file, ") else if %%ProxyEnableValue%% equ 1 (\n");
            fprintf(file, "    echo=\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyEnable /t REG_DWORD /d 0 /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyServer /d \"\" /f >nul 2>nul\n");
            fprintf(file, "    reg add \"HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxyOverride /d \"\" /f >nul 2>nul\n");
            fprintf(file, ")\n");
            // fprintf(file, "pause >nul\n");
            // 关闭文件
            fclose(file);
            
            // 执行批处理文件
            system(filename);

            break;
        case 3:
            exit(0);
        default:
            system("cls");
            printf("Please input correct option\n");
        }

    }
    return 0;
}
