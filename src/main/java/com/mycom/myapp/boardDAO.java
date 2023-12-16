package com.mycom.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.jar.JarEntry;
import java.util.List;

@Repository
public class boardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(boardVO vo){
        String sql = "insert into PLAYER (playGroup,coment,name,teamName,playerImg,position,snsId,height,weight,birthday,awards,song) values ("
                +"'"+vo.getPlayGroup()+"',"
                +"'"+vo.getComent()+"',"
                +"'"+vo.getName()+"',"
                +"'"+vo.getTeamName()+"',"
                +"'"+vo.getFileName()+"',"
                +"'"+vo.getPosition()+"',"
                +"'"+vo.getSnsId()+"',"
                +"'"+vo.getHeight()+"',"
                +"'"+vo.getWeight()+"',"
                +"'"+vo.getBirthday()+"',"
                +"'"+vo.getAwards()+"',"
                +"'"+vo.getSong()+"')";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int id){
        String sql = "delete from PLAYER where id = "+ id;
        return jdbcTemplate.update(sql);
    }

    public boardVO getBoard(int seq){
        String sql="select * from PLAYER where seq=" + seq;
        return jdbcTemplate.queryForObject(sql,new BoardRowMapper());
    }

    public List<boardVO> getBoardList(){
        String sql="select * from PLAYER order by id desc" ;
        return jdbcTemplate.query(sql,new BoardRowMapper());
    }
}
