istioctl install --set profile=demo --set values.gateways.istio-ingressgateway.type=NodePort

istioctl install --set profile=demo --set values.gateways.istio-ingressgateway.type=LoadBalancer

istioctl install -f istio-with-extra-ports.yaml

kubectl get svc  -n istio-system

kubectl get po  -n istio-system

istioctl analyze --all-namespaces

istioctl proxy-config listener istio-ingressgateway-5bf6d45544-94cpq -n istio-system

curl -v --resolve helloworld.www.nxtlvl.ai:9443: afe0eaebffc0f4d0a925cc8480938bed-1304502717.us-west-2.elb.amazonaws.com --cacert www.nxtlvl.ai.crt https://helloworld.www.nxtlvl.ai

kubectl create secret tls nxtlvl.ai-certs -n istio-system --key private.key --cert certificate.crt --ca ca_bundle.crt

kubectl create -f mtls-namespaces.yaml

