package models;

public class Client {

	private int id;
	private String nom;
	private String prenom;
	private String adresse;
	private double chiffreAffaire;
	private String type ;
	private String activite;
	
	
	public Client() {}

	public int getId() {
		return id;
	}
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getPrenom() {
		return prenom;
	}
	
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getAdresse() {
		return adresse;
	}
	
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	
	public double getChiffreAffaire() {
		return chiffreAffaire;
	}
	
	public void setChiffreAffaire(double chiffreAffaire) {
		this.chiffreAffaire = chiffreAffaire;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getActivite() {
		return activite;
	}
	
	public void setActivite(String activite) {
		this.activite = activite;
	}
	
}
