#installing helm chart for grafan-tempo
----------------------------------------

->helm
->helm repo add grafana https://grafana.github.io/helm-charts
->helm repo update
->helm install tempo grafana/tempo
->helm install grafana grafana/grafana
->kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

#installing cert manager
------------------------

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.17.0/cert-manager.yaml

#helm for opentelemetry-operator:
---------------------------------

->helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
->helm repo update
->helm install opentelemetry-operator open-telemetry/opentelemetry-operator --set "manager.collectorImage.repository=otel/opentelemetry-collector"

