package in_out

type LoginResp struct {
	Uid int `json:"uid"`
	NickName string `json:"nick_name"`
	AvatarUrl string `json:"avatar_url"`
	IsAuth bool `json:"is_auth"`
	PostSum int `json:"post_sum"`
}
type PostListResp struct {
	List []PostListItemResp `json:"list"`
}

type PostListItemResp struct {
	MasterInfo PostListRespUserInfo `json:"master_info"`
	PostInfo   PostListRespPostInfo `json:"post_info"`
}
type PostListRespUserInfo struct {
	Id int `json:"id"`
	NickName string `json:"nick_name"`
	AvatarUrl string `json:"avatar_url"`
}
type PostListRespPostInfo struct {
	Id int `json:"id"`
	Content string `json:"content"`
	LoveSum int `json:"love_sum"`
	LoveUserImgList []string `json:"love_user_img_list"`
	IsGiveLove bool `json:"is_give_love"`
}