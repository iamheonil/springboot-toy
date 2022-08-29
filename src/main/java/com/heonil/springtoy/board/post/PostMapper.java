package com.heonil.springtoy.board.post;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface PostMapper {

    /**
     * 게시글 상세정보 조회
     * @param id - PK
     * @return 게시글 상세정보
     */
    PostResponse findById(Long id);

    List<PostResponse> findAll();
}
