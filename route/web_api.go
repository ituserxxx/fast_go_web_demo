package route

import (
	"fast_web_demo/app/web_api/api"
	"github.com/gogf/gf/net/ghttp"
)

func InitWab(s *ghttp.Server) {
	s.BindHandler("/xxx", func(r *ghttp.Request) {
		r.Response.Write("哈喽世界！123")
		r.Exit()
	})
	s.Group("/api", func(group *ghttp.RouterGroup) {
		group.ALL("/user/login", api.User.Login)
	})

}
