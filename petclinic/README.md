Deploy the petclinic app with a MySQL DB VM

~~~
oc new-project petclinic
oc adm policy add-scc-to-user anyuid -z default
oc apply -f .
