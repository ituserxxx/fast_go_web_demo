package middleware

import "github.com/gogf/gf/net/ghttp"

// MiddlewareCORS 允许跨域请求
func MiddlewareCORS(r *ghttp.Request) {
	r.Response.CORSDefault()
	r.Middleware.Next()
}
