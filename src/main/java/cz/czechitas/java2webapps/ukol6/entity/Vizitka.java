package cz.czechitas.java2webapps.ukol6.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;

@Entity
public class Vizitka {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Length(max = 100)
    @NotBlank(message = "Prosím zadejte celé jméno.")
    private String celeJmeno;

    @Length(max = 100)
    @NotBlank(message = "Prosím zadejte svou firmu.")
    private String firma;

    @Length(max = 100)
    @NotBlank(message = "Prosím zadejte ulici a číslo popisné.")
    private String ulice;

    @Length(max = 100)
    @NotBlank(message = "Prosím zadejte obec.")
    private String obec;

    @Pattern(regexp = "\\d{5}")
    @NotBlank(message = "Prosím zadejte PSČ ve formě 11111.")
    private String psc;

    @Email
    @Length(max = 100)
    private String email;

    @Pattern(regexp = "\\d{9}")
    @Length(max = 20)
    private String telefon;

    @URL
    @Length(max = 100)
    private String web;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCeleJmeno() {
        return celeJmeno;
    }

    public void setCeleJmeno(String celeJmeno) {
        this.celeJmeno = celeJmeno;
    }

    public String getFirma() {
        return firma;
    }

    public void setFirma(String firma) {
        this.firma = firma;
    }

    public String getUlice() {
        return ulice;
    }

    public void setUlice(String ulice) {
        this.ulice = ulice;
    }

    public String getObec() {
        return obec;
    }

    public void setObec(String obec) {
        this.obec = obec;
    }

    public String getPsc() {
        return psc;
    }

    public void setPsc(String psc) {
        this.psc = psc;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getCelaAdresa() {
        return ulice + ", " + obec + ", " + psc;
    }
}