import ballerina/io;

public function main(string... args) {
    worker hello_world {
        io:println("Hello, World!");
    }
}
