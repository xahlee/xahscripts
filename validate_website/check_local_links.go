// given a dir, check all local links and inline image links in the html files. Print a report.
// http://xahlee.info/golang/golang_validate_links.html
// In emacs, you can M-x xah-find-output from xah-find.el to make it pretty and jump to links
// Version 2018-11-24

// 2019-02-09 bug todo.
// links like this did not got reported
// <img src="../../xaharts_org/funny/i/Fredryk_Phox_Treadmill_gbbfv.jpg" alt="Fredryk Phox Treadmill gbbfv" width="330" height="251" /><br />

package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"time"
	"unicode/utf8"
)

// inDir is dir to start. must be full path. if it's a file, the parent dir is used

var inDir = "/Users/xah/web/"

const fnameRegex = `\.xml$|\.html$`

var dirsToSkip = []string{
	".git",
	"emacs_manual",
	"godoc",
	"REC-SVG11-20110816",
	"clojure-doc-1.8",
	"css_2.1_spec",
	"css_transitions",
	"js_es2011",
	"js_es2015",
	"js_es2015_orig",
	"js_es2016",
	"js_es2018",
	"jquery_doc",
	"node_api",
	"ocaml_doc",
	"w3c_ui_events",
	"xx_arabian_nights_full_2017-05-13",
	"xx_aladdin_new_in_works",

}

const fileSep = "ff━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n"

const posBracketL = '⁅'
const posBracketR = '⁆'

const fileBracketL = '〘'
const fileBracketR = '〙'

const occurBracketL = '〖'
const occurBracketR = '〗'

// ------------------------------------------------------------

// pass return false if x equals any of y
// version 2018-11-12
func pass(x string, y []string) bool {
	for _, v := range y {
		if x == v {
			return false
		}
	}
	return true
}

func isFileExist(fpath string) bool {
	if _, err := os.Stat(fpath); os.IsNotExist(err) {
		return false
	}
	return true
}

// removeFrac removes fractional part of url. eg remove #...
// version 2018-11-12
func removeFrac(url string) string {
	var x = strings.LastIndex(url, "#")
	if x != -1 {
		return url[0:x]
	}
	return url
}

// getLinks return all links from a html file in the format [startPos linkValue endPos]
// return value looks like this
// [[ `100` `cat.html` `108`] ...]
// version 2018-11-24
func getLinks(textB []byte) [][]string {
	// 2018-11-12 todo. in video tag, there's poster= attribute like this
	// <video src="i/cat.mp4" poster="cat.jpg"></video>
	// both src=val1 and poster=val2 should be in result. however, poster is not now, because we used regex to begin with the tag delimiter <. actually, we can make it work by href|src|poster but then we can't check the starting tag delimiter < to make sure it inside a html tag. If we do not regex regex match of < , then there'll be lots false links returned, due to when the html content is about html.
	// solution is to do a split of all <...>, then regex check each
	// var re = regexp.MustCompile(`<[-_=a-z0-9" ]+(?:href|src|poster)+="([^"]+)"`)
	// var re = regexp.MustCompile(` (?:href|src|poster)="([^"]+)"`)
	var re = regexp.MustCompile(`<[-_=a-z0-9" ]+(?:href|src|og:image" content)="([^"]+)"`)
	// var lnks = re.FindAllStringSubmatch(textB, -1)
	// return lnks

	var xlinks = re.FindAllSubmatchIndex(textB, -1)

	var result = make([][]string, len(xlinks))
	for i, v := range xlinks {
		var x = []string{fmt.Sprintf("%d", utf8.RuneCount(textB[0:v[2]])), string(textB[v[2]:v[3]]), fmt.Sprintf("%d", utf8.RuneCount(textB[0:v[3]]))}
		result[i] = x

	}

	return result
}

// xahSiteUrlToFilePath change a xah http link to file full path
// eg http://ergoemacs.org/index.html becomes /Users/xah/web/ergoemacs_org/index.html
// if it's not exah site link, return no change
// version 2018-11-12
func xahSiteUrlToFilePath(ss string) string {
	var xx = ss
	xx = strings.Replace(xx, "http://ergoemacs.org/", "/Users/xah/web/ergoemacs_org/", 1)
	xx = strings.Replace(xx, "http://wordyenglish.com/", "/Users/xah/web/wordyenglish_com/", 1)
	xx = strings.Replace(xx, "http://xaharts.org/", "/Users/xah/web/xaharts_org/", 1)
	xx = strings.Replace(xx, "http://xahlee.info/", "/Users/xah/web/xahlee_info/", 1)
	xx = strings.Replace(xx, "http://xahlee.org/", "/Users/xah/web/xahlee_org/", 1)
	xx = strings.Replace(xx, "http://xahmusic.org/", "/Users/xah/web/xahmusic_org/", 1)
	xx = strings.Replace(xx, "http://xahporn.org/", "/Users/xah/web/xahporn_org/", 1)
	xx = strings.Replace(xx, "http://xahsl.org/", "/Users/xah/web/xahsl_org/", 1)
	return xx
}

func handleFileExist(fPath string, linkPath string, linkVal string, startPos string) error {
	if !isFileExist(linkPath) {
		fmt.Printf("%c%v%c %c%s%c %c%s%c\n", fileBracketL, fPath, fileBracketR, posBracketL, startPos, posBracketR, occurBracketL, linkVal, occurBracketR)
		fmt.Println(fileSep)
	}
	return nil
}

// checkFile, takes a html file path, extract all links, if local link and file does not exist, print it
func checkFile(path string) error {
	contentBytes, er := ioutil.ReadFile(path)
	if er != nil {
		panic(er)
	}
	var allLinks = getLinks(contentBytes)

	for _, v := range allLinks {
		var linkVal = v[1]
		var startPos = v[0]
		var linkValNoFrag = removeFrac(linkVal)
		var linkPath string
		var isXahSite, errxs = regexp.MatchString(`^http://ergoemacs.org|^http://wordyenglish.com|^http://xaharts.org|^http://xahlee.info|^http://xahlee.org|^http://xahmusic.org|^http://xahporn.org|^http://xahsl.org/`, linkVal)
		if errxs != nil {
			panic(errxs)
		}
		if isXahSite {
			linkPath = xahSiteUrlToFilePath(linkValNoFrag)
			handleFileExist(path, linkPath, linkVal, startPos)
		} else {
			var isNoWant, errM = regexp.MatchString(`//|^http://|^https://|^mailto:|^irc:|^ftp:|^javascript:`, linkVal)
			if errM != nil {
				panic(errM)
			}
			if !isNoWant {
				linkPath = filepath.Clean(filepath.Dir(path) + "/" + linkValNoFrag)
				handleFileExist(path, linkPath, linkVal, startPos)
			}
		}

	}
	return nil
}

func main() {
	scriptName, errPath := os.Executable()
	if errPath != nil {
		panic(errPath)
	}

	inDir = filepath.Dir(inDir)

	fmt.Println("-*- coding: utf-8; mode: xah-find-output -*-")
	fmt.Printf("%v\n", time.Now())
	fmt.Printf("Script: %v\n", filepath.Base(scriptName))
	fmt.Printf("In dir: %v\n", inDir)
	fmt.Printf("File regex filter: %v\n", fnameRegex)
	fmt.Println()
	fmt.Println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")

	var pWalker = func(pathX string, infoX os.FileInfo, errX error) error {
		if errX != nil {
			fmt.Printf("error 「%v」 at a path 「%q」\n", errX, pathX)
			return errX
		}
		if infoX.IsDir() {
			if !pass(filepath.Base(pathX), dirsToSkip) {
				return filepath.SkipDir
			}
		} else {
			var x, err = regexp.MatchString(fnameRegex, filepath.Base(pathX))
			if err != nil {
				panic("stupid MatchString error 59767")
			}
			if x {
				checkFile(pathX)
			}
		}
		return nil
	}

	err := filepath.Walk(inDir, pWalker)
	if err != nil {
		fmt.Printf("error walking the path %q: %v\n", inDir, err)
	}

	fmt.Printf("\n%v\n", "Done. bad links are printed above, if any.")
}
