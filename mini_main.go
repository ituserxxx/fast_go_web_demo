package main

import (
	"fast_web_demo/route"
	"github.com/gogf/gf/frame/g"
)

func main() {
	s := g.Server()
	route.InitMini(s)
	s.Run()
}
