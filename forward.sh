svc=`kubectl get pods | grep zeebe-zeebe-gateway | awk '{ print $1 }'`
kubectl port-forward $svc 26500:26500 &
svc=`kubectl get pods | grep ph-ee-connector-ams-mifos | awk '{ print $1 }'`
kubectl port-forward $svc 6000:80 &
svc=`kubectl get pods | grep ph-ee-connector-channel | awk '{ print $1 }'`
kubectl port-forward $svc 6100:80 &
svc=`kubectl get pods | grep ph-ee-connector-gsma | awk '{ print $1 }'`
kubectl port-forward $svc 6200:80 &
svc=`kubectl get pods | grep ph-ee-operations-app | awk '{ print $1 }'`
kubectl port-forward $svc 6300:80 &
svc=`kubectl get pods | grep zeebe-operate | awk '{ print $1 }'`
kubectl port-forward $svc 6400:80 &
svc=`kubectl get pods | grep ph-ee-operations-web | awk '{ print $1 }'`
kubectl port-forward $svc 6500:4200 &
svc=`kubectl get pods | grep ph-ee-elasticsearch | awk '{ print $1 }'`
kubectl port-forward $svc 9200:9200 &
svc=`kubectl get pods | grep ph-ee-kibana | awk '{ print $1 }'`
kubectl port-forward $svc 5601:5601 &
svc=`kubectl get pods | grep zeebe-kibana | awk '{ print $1 }'`
kubectl port-forward $svc 5601:5602 &



