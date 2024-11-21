Deploy the petclinic app with a MySQL DB VM

Note: modify the DV sc to the actual one according to your env

~~~
oc new-project petclinic
oc adm policy add-scc-to-user anyuid -z default
oc apply -f .
oc new-app openshift/java:openjdk-17-ubi8~https://github.com/redhat-developer-demos/spring-petclinic.git --name=petclinic-demo --build-env SPRING_PROFILES_ACTIVE=mysql --build-env MYSQL_URL=jdbc:mysql://petclinic-db:3306/petclinic
oc expose svc/petclinic-demo
~~~
