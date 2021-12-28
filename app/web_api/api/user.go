package api

import (
	"fast_web_demo/app/web_api/in_out"
	"fast_web_demo/app/web_api/service"
	"fast_web_demo/constant"
	"fast_web_demo/utils/response"
	"github.com/gogf/gf/net/ghttp"
)

// User userApi 用户管理器
var User *userApi

type userApi struct{}

func (u *userApi) Login(r *ghttp.Request) {
	var req *in_out.LoginReq
	if err := r.Parse(&req); err != nil {
		response.Err(r,constant.ParamsError,err.Error())
	}
	id,err := service.User.Login(req)
	if err != nil {
		response.Err(r, constant.LogicError, err.Error())
	}
	response.Succ(r, id)
}
