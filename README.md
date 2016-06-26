# HTML Parser

## Requirements

+ >= Java 1.6
+ RVM (`\curl -sSL https://get.rvm.io | bash -s stable`)
+ JRuby 9.0.1.0 (`rvm install jruby-9.0.1.0`)
+ Bundler (`gem install rmv`)

## Installation

1. Install RVM
2. Run `bundle`

## Usage

Given a filepath-name (**FPN**) of a file we want to parse, then we have two options:

+ **Variant 1**: Run it via ruby (requires a successfull installation):
 + `ruby parser.rb FPN`
+ **Variant 2**: Run the generated jar file (requires >= Java 1.6)
 + `java -jar html-parser.jar FPN`

The parsed output is located at: `./out/` having the same name as the given input file.
The code runs on any operating system.

 ### Example

 Enter `java -jar html-parser.jar example/file.txt` and it reporst `File `example/file.txt` saved to `./out/file.txt`.

 ## Compile the code

Generate a executable jar file called `html-parser.jar` into this project's root directory:

Run `rake build`
