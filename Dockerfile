FROM len996/115bot:latest

# 复制部署说明到镜像中
COPY README.md /README.md
COPY application.properties.txt /application.properties.example

# 设置工作目录
WORKDIR /app

# 保留原镜像的 ENTRYPOINT，这样默认行为不变
# 用户可以通过 docker run okhao/115bot:latest /bin/sh -c "cat /README.md" 来查看说明
