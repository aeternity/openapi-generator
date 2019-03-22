# OpenAPI Generator

## Prerequisities 
To build from source, you need the following installed and available in your $PATH:

* [Java 7 or 8](http://java.oracle.com)

* [Apache maven 3.3.3 or greater](http://maven.apache.org/)

## Running script
0. Clone the project: 
```
  git clone https://github.com/aeternity/openapi-generator &&
  cd openapi-generator/ &&
  git checkout elixir-adjustment
```
1. `mvn package` - to compile and build Java project.
2. To generate an `elixir` api client, by providing a `swagger.yaml` file, execute the following command:
```
  java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate -i PATH_TO_SWAGGER.yaml -g elixir -o DESTINATION_FOLDER
```
**Notes:**
  - `PATH_TO_SWAGGER.yaml` - is a path to the `swagger.yaml` file, usually this file is located in `config` folder, and can be found [here](https://github.com/aeternity/aeternity/blob/master/config/swagger.yaml).
  - `DESTINATION_FOLDER` - is a path to the folder, where the aeternity node elixir API client will be generated. 
3. Run `mix deps.get && mix format && iex -S mix ` 
