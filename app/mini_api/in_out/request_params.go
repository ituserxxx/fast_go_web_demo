package in_out

// 创建Post
type CreatePostReq struct {
	UID         int    `json:"uid" v:"required"`
	Context     string `json:"context" v:"required"`
}