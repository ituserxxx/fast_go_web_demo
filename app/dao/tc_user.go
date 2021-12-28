// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"fast_web_demo/app/dao/internal"
)

// tcUserDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type tcUserDao struct {
	*internal.TcUserDao
}

var (
	// TcUser is globally public accessible object for table tc_user operations.
	TcUser tcUserDao
)

func init() {
	TcUser = tcUserDao{
		internal.NewTcUserDao(),
	}
}

// Fill with you ideas below.
