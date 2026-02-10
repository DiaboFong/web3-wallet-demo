# 1. 找个基础环境：Python 3.9
FROM python:3.9-slim

# 2. 在容器里创建一个文件夹叫 /app
WORKDIR /app

# 3. 把 requirements.txt 复制进去，并安装依赖
# (为了速度快，这里用了清华大学的镜像源)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# 4. 把代码 app.py 复制进去
COPY app.py .

# 5. 告诉大家这个程序用 5000 端口
EXPOSE 5000

# 6. 启动命令
CMD ["python", "app.py"]
