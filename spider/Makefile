include .env
include ../_common/common.mk

CONTAINERS=${MYSQL_CONTAINER_NAME} ${REDIS_STACK_CONTAINER_NAME}

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: build"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."

.PHONY: build start
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_HOST_PATH}/mysql
	rm -rf ${DATA_HOST_PATH}/redis
	@${DOCKER_COMPOSE_DOWN}