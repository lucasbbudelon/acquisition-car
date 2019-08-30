typeUpdate="patch"

if [[ "$1" != "" ]];then
    typeUpdate=$1
fi

# update version
current=$(grep -Po "([0-9]+).([0-9]+).([0-9]+)-SNAPSHOT" build.gradle)
new=$(bash ../../bash-scripts/update-version/updateVersion.sh $current $typeUpdate)
sed -i "s/${current}/${new}-SNAPSHOT/g" build.gradle

# build app
bash ./scripts/build.sh

# create tag
jarFile=$(ls ./build/libs)
git tag -a ${jarFile} -m "${typeUpdate} update"
git push --tags