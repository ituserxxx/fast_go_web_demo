package repository

import (
	"fast_web_demo/app/dao"
	"fast_web_demo/app/model"
	"github.com/gogf/gf/errors/gerror"

)
//自行参照修改
var User = userRespository{}

type userRespository struct {

}

func(u *userRespository)GetInfoByID(id int)(*model.TcUser,error){
	l,err := dao.TcUser.OmitEmpty().Where("id = ?",id).FindOne()
	if err != nil {
		return nil, err
	}
	if l.IsEmpty() {
		return nil, gerror.New("no user record")
	}
	var uModel *model.TcUser
	if err := l.Struct(&uModel);err != nil{
		return nil, gerror.New("user Struct fail")
	}
	return uModel,nil
}
