
docker run -it --rm --name my-maven-project -v "$HOME/.m2":/root/.m2:Z -v "$(pwd)":/usr/src/mymaven:Z -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean package

docker build -t hellomule4:v0.1 .

docker run -it --rm -p 8081:8081 hellomule4:v0.1 
