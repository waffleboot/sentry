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
	helm template debug sentry \
		--set postgresql.enabled=false \
		--set externalPostgresql.password=123456 \
		--set externalPostgresql.host=postgresql.team10.svc.cluster.local

package:
	helm package sentry
	mv sentry-12.0.0.tgz charts

wip:
	git wip && git push

install:
	helm install sentry sentry2/sentry \
		--set postgresql.enabled=false \
		--set externalPostgresql.password=123456 \
		--set externalPostgresql.host=postgresql.team10.svc.cluster.local

uninstall:
	helm uninstall sentry
