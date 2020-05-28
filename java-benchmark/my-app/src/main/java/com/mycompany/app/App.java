package com.mycompany.app;

import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

/**
 * Example program to list links from a URL.
 */
public class App {
    public static void main(String[] args) throws IOException {
        // Validate.isTrue(args.length == 1, "usage: supply url to fetch");
        String url = args[0];
        String selector = args[1];
        // print("Fetching %s...", url);

        Document doc = Jsoup.connect(url).get();
        if ( selector.equals("") ) {
            print("java,%s,%s,%d,", url, selector, doc.childNodeSize());
        } else {
            Elements items = doc.select(selector);
            print("java,%s,%s,%d,", url, selector, items.size());
        }
    }

    private static void print(String msg, Object... args) {
        System.out.print(String.format(msg, args));
    }

    // private static String trim(String s, int width) {
    //     if (s.length() > width)
    //         return s.substring(0, width-1) + ".";
    //     else
    //         return s;
    // }
}
