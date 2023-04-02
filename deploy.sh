AWS_REGION="eu-west-1"
AWS_PROFILE="$1"

echo "AWS_PROFILE used is ${AWS_PROFILE}"
echo "AWS_REGION used is ${AWS_REGION}"


CMD="aws cloudformation deploy \
  --no-fail-on-empty-changeset \
  --stack-name ccentric-vpc \
  --template-file vpc.yaml \
  --region ${AWS_REGION} \
  --profile ${AWS_PROFILE}"
echo $CMD
$CMD