jarPath="./build/libs"
jarFile=$(ls $jarPath)

./gradlew clean build -xtest
java -jar build/libs/$jarFile