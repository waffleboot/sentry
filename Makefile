.PHONY: remove add gz index update

add:
	helm repo add sentry https://raw.githubusercontent.com/waffleboot/sentry/main/charts

update:
	helm repo update sentry

remove:
	helm repo remove sentry

gz:
	tar -cvzf charts/simple.tgz simple

index:
	helm repo index charts
