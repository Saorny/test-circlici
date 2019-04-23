echo "logging..."
USERNAME=mobilenow
PASSWORD=pass123
URL=registry.cn-hangzhou.aliyuncs.com
docker login --username=$USERNAME --password=$PASSWORD $URL
echo "logged!"