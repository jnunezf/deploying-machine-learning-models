NAME=udemy-ml-api-jnunezf

build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://vLLBomrokHMzWUCXyxdj@pypi.fury.io/jnunezf/ -t registry.heroku.com/udemy-ml-api-jnunezf/web .

push-ml-api-heroku:
	docker push registry.heroku.com/udemy-ml-api-jnunezf/web:latest
