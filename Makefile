.PHONY: remove add gz index update debug

add:
	helm repo add sentry2 https://raw.githubusercontent.com/waffleboot/sentry/main/charts

update: gz
	git wip && git push
	helm repo update sentry2

remove:
	helm repo remove sentry2

gz:
	tar -cvzf charts/simple-0.1.1.tgz simple

index:
	helm repo index charts

debug:
	helm template --debug haha sentry2/simple
