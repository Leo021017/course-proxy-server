'''
Description: 操作blklist.txt和vali_user.txt,用于socket server
version: 
Author: Zhang Lingxin
Date: 2023-11-02 09:10:01
LastEditors: Zhang Lingxin
LastEditTime: 2023-11-02 10:54:39
'''
import os

class Opblklist:
    def __init__(self, filename):
        self.filename = filename
        self.f = None
        # debug最后一个行后没有空格，如果没有，自动加上
        self.ensure_newline_at_end()
        
    # 魔术方法，当此类的实例销毁后自动调用此方法
    def __del__(self):
        self.close_file()

    # debug最后一个行后没有空格，如果没有，自动加上
    def ensure_newline_at_end(self):
        with open(self.filename, 'r+') as self.f:
            size = os.fstat(self.f.fileno()).st_size  # 获取文件大小
            if size > 0:
                self.f.seek(size - 1)  # 移动到文件最后一个字符
                last_char = self.f.read(1)
                if last_char != '\n':
                    self.f.write('\n')
            else:
                self.f.write('\n')
    
    def show(self):
        with open(self.filename, 'r') as self.f:
            lines = self.f.readlines()
        # 去除每行的换行符并去重，且只有当行不为空时才加入到列表中
        unique_lines = list(set(line.strip() for line in lines if line.strip()))
        return unique_lines
    
    # added line 不需要换行符
    def add(self, new_line):
        with open(self.filename, 'r') as self.f:
            lines = self.f.readlines()
        # 去除每行的换行符,方便防止重复
        existing_lines = [line.strip() for line in lines]
        if new_line not in existing_lines:
            with open(self.filename, 'a') as self.f:
                self.f.write(new_line + '\n')
        return 
    
    def delete(self, line_to_delete):
        with open(self.filename, 'r') as self.f:
            lines = self.f.readlines()
        # 去除每行的换行符，方便防止重复
        lines = [line.strip() for line in lines]
        # 检查行是否存在
        if line_to_delete not in lines:
            return False
        # 删除所有匹配的行
        lines = [line for line in lines if line != line_to_delete]
        # 重新写入文件
        with open(self.filename, 'w') as self.f:
            for line in lines:
                self.f.write(line + '\n')
        return True

    def clear(self):
        with open(self.filename, 'w') as self.f:
            self.f.truncate(0)
    
    def close_file(self):
        if self.f is not None:
            self.f.close()
            self.f = None
            

if __name__ == '__main__':
    opblklist = Opblklist('blklist.txt')
    
    print(opblklist.show())
    
    opblklist.add("190.89.100.100")
    
    print(opblklist.show())
    
    if opblklist.delete("193.89.0.1"):
        print("del ok")
    
    print(opblklist.show())
    
    opblklist2 = Opblklist('../test.txt')
    
    if len(opblklist2.show())==0:
        print("blklist is empty")