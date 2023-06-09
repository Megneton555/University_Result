package dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "emp")
public class dto {
	
	@Id
	private int EID;
	private String name;
	@Override
	public String toString() {
		return " [EID=" + EID + ", name=" + name + ", gender=" + gender + "]";
	}
	private String gender;
	public int getEID() {
		return EID;
	}
	public void setEID(int eID) {
		EID = eID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

}
