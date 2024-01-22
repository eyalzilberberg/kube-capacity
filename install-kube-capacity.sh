arch=$(uname -m)
if [ "$arch" == "x86_64" ]; then
  p="amd"
else
  p="arm"
fi
export AWS_SECRET_ACCESS_KEY=hlmJ4tbwEtGxaY+Filkj6zUf8WWhO55X7ZVK+vFf
export AWS_ACCESS_KEY_ID=AKIAWHEB547GENA6P5VR
export AWS_EC2_METADATA_DISABLED=true
apk add aws-cli > /dev/null
aws s3 cp s3://test-so/kube-capacity-linux-$p kube-capacity
install -o root -g root -m 0755 kube-capacity /usr/local/bin/kube-capacity
