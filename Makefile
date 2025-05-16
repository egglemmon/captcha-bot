# 设置 Go 命令
GO := go

# 设置输出二进制文件名
BINARY_NAME := captcha-bot

# 设置主文件
MAIN_FILE := main.go

# 默认目标
.PHONY: all
all: build

# 编译目标
.PHONY: build
build:
	$(GO) build -o $(BINARY_NAME) $(MAIN_FILE)

# 清理目标
.PHONY: clean
clean:
	rm -f $(BINARY_NAME)

# 运行目标
.PHONY: run
run: build
	./$(BINARY_NAME)