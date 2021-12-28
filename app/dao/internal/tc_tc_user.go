// ==========================================================================
// Code generated by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/frame/gmvc"
)

// TcTcUserDao is the manager for logic model data accessing and custom defined data operations functions management.
type TcTcUserDao struct {
	gmvc.M                 // M is the core and embedded struct that inherits all chaining operations from gdb.Model.
	C      tcTcUserColumns // C is the short type for Columns, which contains all the column names of Table for convenient usage.
	DB     gdb.DB          // DB is the raw underlying database management object.
	Table  string          // Table is the underlying table name of the DAO.
}

// TcTcUserColumns defines and stores column names for table tc_user.
type tcTcUserColumns struct {
	Id         string //
	Openid     string //
	Phone      string //
	Nickname   string //
	AvatarUrl  string //
	CreateTime string //
}

// NewTcTcUserDao creates and returns a new DAO object for table data access.
func NewTcTcUserDao() *TcTcUserDao {
	columns := tcTcUserColumns{
		Id:         "id",
		Openid:     "openid",
		Phone:      "phone",
		Nickname:   "nickname",
		AvatarUrl:  "avatar_url",
		CreateTime: "create_time",
	}
	return &TcTcUserDao{
		C:     columns,
		M:     g.DB("default").Model("tc_user").Safe(),
		DB:    g.DB("default"),
		Table: "tc_user",
	}
}