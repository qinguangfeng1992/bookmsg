package com.qinguangfeng.dao.entity;

/**
 * 
 * @author qinguangfeng
 */
public class Book {
	/**
	 *  主键
	 */
	private Integer bookid;
	/**
	 *  图书类别
	 */
	private String booktype;
	/**
	 *  图书名字
	 */
	private String bookname;
	/**
	 *  图书作者
	 */
	private String bookauthor;
	/**
	 *  图书价格
	 */
	private Integer bookprice;
	/**
	 *  图书出版社
	 */
	private String bookpublish;
	/**
	 *  图书数量
	 */
	private Integer booknum;
	/**
	 * 主键
	 * @param bookid
	 */
	public void setBookid(Integer bookid){
		this.bookid = bookid;
	}
	
    /**
     * 主键
     * @return
     */	
    public Integer getBookid(){
    	return bookid;
    }
	/**
	 * 图书类别
	 * @param booktype
	 */
	public void setBooktype(String booktype){
		this.booktype = booktype;
	}
	
    /**
     * 图书类别
     * @return
     */	
    public String getBooktype(){
    	return booktype;
    }
	/**
	 * 图书名字
	 * @param bookname
	 */
	public void setBookname(String bookname){
		this.bookname = bookname;
	}
	
    /**
     * 图书名字
     * @return
     */	
    public String getBookname(){
    	return bookname;
    }
	/**
	 * 图书作者
	 * @param bookauthor
	 */
	public void setBookauthor(String bookauthor){
		this.bookauthor = bookauthor;
	}
	
    /**
     * 图书作者
     * @return
     */	
    public String getBookauthor(){
    	return bookauthor;
    }
	/**
	 * 图书价格
	 * @param bookprice
	 */
	public void setBookprice(Integer bookprice){
		this.bookprice = bookprice;
	}
	
    /**
     * 图书价格
     * @return
     */	
    public Integer getBookprice(){
    	return bookprice;
    }
	/**
	 * 图书出版社
	 * @param bookpublish
	 */
	public void setBookpublish(String bookpublish){
		this.bookpublish = bookpublish;
	}
	
    /**
     * 图书出版社
     * @return
     */	
    public String getBookpublish(){
    	return bookpublish;
    }
	/**
	 * 图书数量
	 * @param booknum
	 */
	public void setBooknum(Integer booknum){
		this.booknum = booknum;
	}
	
    /**
     * 图书数量
     * @return
     */	
    public Integer getBooknum(){
    	return booknum;
    }
}