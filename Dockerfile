# 使用 Node.js 14 作为基础镜像
FROM node:18.17.0

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装应用程序的依赖项
RUN npm install

# 复制应用程序代码到工作目录
COPY . .

# 构建 Next.js 应用程序
RUN npm run build

# 暴露应用程序运行的端口
EXPOSE 3000

# 定义容器启动时执行的命令
CMD ["npm", "start"]
