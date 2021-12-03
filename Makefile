.PHONY: add update remove index debug package wip run

run: package index wip update

add:
	helm repo add sentry2 https://raw.githubusercontent.com/waffleboot/sentry/main/charts

update:
	helm repo update sentry2

remove:
	helm repo remove sentry2

index:
	helm repo index charts --url https://raw.githubusercontent.com/waffleboot/sentry/main/charts

debug:
	helm template debug simple

package:
	helm package simple
	mv simple-0.1.1.tgz charts

wip:
	git wip && git push

install:
	helm install debug sentry2/simple

uninstall:
	helm uninstall debug
