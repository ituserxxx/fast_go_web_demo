package api

import (
	"fast_web_demo/app/mini_api/in_out"
	"fast_web_demo/app/mini_api/service"
	"fast_web_demo/constant"
	"fast_web_demo/utils/response"
	"github.com/gogf/gf/crypto/gmd5"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/os/gtime"
)

// Post postApi
var Post *postApi

type postApi struct{}

func (p *postApi) CreatePost(r *ghttp.Request) {
	var req *in_out.CreatePostReq
	if err := r.Parse(&req); err != nil {
		response.Err(r, constant.ParamsError, err.Error())
	}
	if st := r.Session.GetInt64(gmd5.Encrypt(req));st > 0 {
		if gtime.Timestamp() - st < 300{
			response.Err(r, constant.ParamsError, "大哥，慢点~~")
		}
	}
	err := service.Post.Create(req)
	if err != nil {
		response.Err(r, -1, err.Error())
	}
	response.Succ(r, "ok")
}
