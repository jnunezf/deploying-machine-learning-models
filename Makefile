NAME=udemy-ml-api-jnunezf
COMMIT_ID=$(shell git rev-parse HEAD)  # REMOVED

build-ml-api-heroku:
	echo ${PIP_EXTRA_INDEX_URL}
	echo $(NAME)
	docker build --build-arg PIP_EXTRA_INDEX_URL=${PIP_EXTRA_INDEX_URL} -t registry.heroku.com/$(NAME)/web .

push-ml-api-heroku:
	docker push registry.heroku.com/${HEROKU_APP_NAME}/web:latest
