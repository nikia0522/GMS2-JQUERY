package com.gms.web.command;

import com.gms.web.constants.Extension;
import com.gms.web.constants.Path;

import lombok.Getter;
import lombok.Setter;

public class Command implements Commandable{
	@Getter 
	protected String action, pageNumber, view, column, search;
	
	@Getter @Setter
	protected String dir, startRow, endRow, page;
	
	public void setPageNumber(String pageNumber){
		this.pageNumber=(pageNumber==null)?"1":pageNumber;
		System.out.println("페이지번호:"+this.pageNumber);
	}
	public void setAction(String action){
		this.action=(action==null)?"move":action;
		System.out.println("액션:"+action);
		
	}
	@Override
	public void process() {
		this.view= 
				(dir.equals("home"))?"/WEB-INF/view/common/home.jsp":Path.VIEW +dir+Path.SEPARATOR+page+Extension.JSP;
		System.out.println("이동페이지:"+view);
	}
	
	public void setColumn(String column) {
		this.column = (column==null)?"none":column;
		System.out.println("컬럼:"+this.column);
	}
	
	public void setSearch(String search) {
		this.search = (search==null)?"none":search;
		System.out.println("서치:"+this.search);
	}
	@Override
	public String toString() {
		return "Command [DEST="+dir+"/"+page+".jsp"+",ACTION="+action+ "]";
	}

}
