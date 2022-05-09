package services;

public class Ehd {
	private int id;
	private String nimi;
	private float ika;
	public Ehd() {
	}
	public Ehd(int id, String nimi, float ika) {
		super();
		this.id = id;
		this.nimi = nimi;
		this.ika = ika;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNimi() {
		return nimi;
	}
	public void setNimi(String nimi) {
		this.nimi = nimi;
	}
	public double getIka() {
		return ika;
	}
	public void setIka(float ika) {
		this.ika = ika;
	}
	@Override
	public String toString() {
		return "Ehd [id=" + id + ", nimi=" + nimi + ", ikä=" + ika + "]";
	}
}
