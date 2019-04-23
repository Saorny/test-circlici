IMAGE_NAME="circleci-test"
URL=registry.cn-hangzhou.aliyuncs.com
SUBURL=mobilenow
FULL_URL="$URL/$SUBURL/$IMAGE_NAME:latest"

#login
sh ./login.sh
#build and deploy specific service
docker build -t $FULL_URL -f Dockerfile && docker push $FULL_URL
docker build -t $FULL_URL -f ./Dockerfile . && docker push $FULL_URL
echo "IMAGE BUILT & SUBMITTED => $FULL_URL"
