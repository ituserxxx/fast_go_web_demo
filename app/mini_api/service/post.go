package service

import (
	"fast_web_demo/app/dao"
	"fast_web_demo/app/mini_api/in_out"
	"fast_web_demo/app/model"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtime"
)

var Post *post

type post struct {
}

func (p *post) Create(req *in_out.CreatePostReq) error {
	if tx, err := g.DB().Begin(); err == nil {
		u, err := dao.TcUser.OmitEmpty().Where("id=?", req.UID).FindOne()
		if err != nil {
			_ = tx.Rollback()
			return err
		}
		var uInfo model.TcUser
		if err := u.Struct(&uInfo); err != nil {
			return err
		}
		_, err = dao.TcPost.TX(tx).OmitEmpty().Insert(&model.TcPost{
			Uid:         req.UID,
			Content:     req.Context,
			IsAnonymous: uInfo.IsAnonymous,
			IsSquare:    uInfo.IsSquare,
			CreateTime:  gtime.Now(),
		})
		if err != nil {
			_ = tx.Rollback()
			return err
		}
		_, err = dao.TcUser.TX(tx).OmitEmpty().Where("id=?", req.UID).Increment("post_sum", 1)
		if err != nil {
			_ = tx.Rollback()
			return err
		}
		_ = tx.Commit()
	}
	return nil
}
