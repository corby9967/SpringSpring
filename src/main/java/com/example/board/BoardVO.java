package com.example.board;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String title;
	private Date date;
	private String place;
	private String with;
	private String weather;
	private String feel;
	private String writer;
	private String content;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getWith() {
		return with;
	}

	public void setWith(String with) {
		this.with = with;
	}

	public String getWeather() {
		return weather;
	}

	public void setWeather(String weather) {
		this.weather = weather;
	}

	public String getFeel() {
		return feel;
	}

	public void setFeel(String feel) {
		this.feel = feel;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
