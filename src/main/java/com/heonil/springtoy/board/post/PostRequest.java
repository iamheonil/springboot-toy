package com.heonil.springtoy.board.post;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PostRequest {

    private String userNo;
    private String userId;
    private String userPwd;
    private String userNm;
    private String email;
    private String userDropYn;
    private String cdate;

}
