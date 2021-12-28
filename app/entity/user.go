package entity


//自行参照修改
var User  = &user{}

type user struct {
	UserType UserType
}

type UserType struct {
	//1-游客(默认)，2-店员，3-店长，4-管理员
	Visitor ,Executive ,ShopManager ,Admin  int
}

func init() {
	userTypeInit()
}

func userTypeInit() {
	User.UserType.Visitor = 1
	User.UserType.Executive = 2
	User.UserType.ShopManager = 3
	User.UserType.Admin = 4
}

