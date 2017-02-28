package com.my.web.model;

import java.io.Serializable;

public class User implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 2455512061548555915L;

	private String id;

    private String name;
    
    private String pid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}
}