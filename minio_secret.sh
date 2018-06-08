
USERNAME=`echo -n 'opsmx123456' | base64`
PASSWORD=`echo -n 'opsmx123456' | base64`
cat <<EOT >minio_secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: minio
type: Opaque
data:
  username: $USERNAME
  password: $PASSWORD
EOT
#echo -n 'admin' | base64
#echo 'admin' | base64 --decode
