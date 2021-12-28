package in_out

type LoginResp struct {
	Uid int `json:"uid"`
	NickName string `json:"nick_name"`
	AvatarUrl string `json:"avatar_url"`
	IsAuth bool `json:"is_auth"`
	PostSum int `json:"post_sum"`
}
