## HTML parsing benchmark

This repository contains two sets of source code + some bash scripts to compare performance of HTML parsing in Java vs. Go.

You can see corresponding blog post [here](https://mahdix.com/blog/2020/05/28/benchmarking_html_parsers_golang_vs_java/).

### How to run it myself?

1. Clone the repository
2. Compile go source with `go build main.go`
3. Package Java source with `mvn package`
4. run `./hbenchmark.sh 10 links.txt` to do 10 executions based on links in `links.txt` file.

