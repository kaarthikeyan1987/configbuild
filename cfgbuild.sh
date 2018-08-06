ELB=($(kubectl describe service tomcat|grep "LoadBalancer Ingress:"|awk '{print $3}'))
sed -i 's/elb/'$ELB'/g' myconf.conf
mv myconf.conf /root/nginx.conf
