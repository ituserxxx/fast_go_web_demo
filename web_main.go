package main

import (
	"fast_web_demo/route"
	"github.com/gogf/gf/frame/g"
)

func main() {
	s := g.Server()
	route.InitWab(s)
	s.Run()
}
