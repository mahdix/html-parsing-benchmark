## HTML parsing benchmark

This repository contains two sets of source code + some bash scripts to compare performance of HTML parsing in Java vs. Go.

You can see corresponding blog post [here]().

### How to run it myself?

1. Clone the repository
2. Compile go source with `go build main.go`
3. Package Java source with `mvn package`
4. run `./hbenchmark.sh 10 links.txt` to do 10 executions based on links in `links.txt` file.

