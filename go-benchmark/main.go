package main

import (
  "fmt"
  "log"
  "net/http"
  "os"

  "github.com/PuerkitoBio/goquery"
)

func ExampleScrape(url string, selector string) int {
  // Request the HTML page.
  res, err := http.Get(url)
  if err != nil {
    log.Fatal(err)
  }
  defer res.Body.Close()
  if res.StatusCode != 200 {
    log.Fatalf("status code error: %d %s", res.StatusCode, res.Status)
  }

  // Load the HTML document
  doc, err := goquery.NewDocumentFromReader(res.Body)
  if err != nil {
    log.Fatal(err)
  }

  if selector != "" {
      // Find the review items
      return doc.Find(selector).Length()
  } else {
      return doc.Length()
  }
    
}

func main() {
    url := os.Args[1]
    selector := os.Args[2]

    fmt.Printf("go,%s,%s,%d,", url, selector, ExampleScrape(url, selector))
}
