.PHONY: remove add gz index update debug

add:
	helm repo add sentry https://raw.githubusercontent.com/waffleboot/sentry/main/charts

update: gz
	git wip && git push
	helm repo update sentry

remove:
	helm repo remove sentry

gz:
	tar -cvzf charts/simple-0.1.0.tgz simple

index:
	helm repo index charts

debug:
	helm template --debug haha sentry/simple
