## Argo demo
[demo_argo.mov](../assets/video/demo_argo.mov)

## App demo

[demo_app.mov](../assets/video/demo_app.mov)


### terminal 1
    kubectl port-forward -n demo svc/ambassador 8088:80

### terminal 2
    curl localhost:8088
    wget -O /tmp/g.png https://e7.pngegg.com/pngimages/115/523/png-clipart-product-design-brand-logo-font-demo-text-orange.png
    curl curl -F 'image=@/tmp/g.png' localhost:8088/img/
