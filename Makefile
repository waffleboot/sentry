.PHONY: remove add gz index

add:
	helm repo add simple https://raw.githubusercontent.com/waffleboot/sentry/main/charts

remove:
	helm repo remove simple

gz:
	tar -cvzf charts/simple.tgz simple

index:
	helm repo index charts
