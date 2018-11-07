/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author BartD
 */
@Entity
@Table(name = "sklep")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sklep.findAll", query = "SELECT s FROM Sklep s")
    , @NamedQuery(name = "Sklep.findById", query = "SELECT s FROM Sklep s WHERE s.id = :id")
    , @NamedQuery(name = "Sklep.findByRok", query = "SELECT s FROM Sklep s WHERE s.rok = :rok")
    , @NamedQuery(name = "Sklep.findByCena", query = "SELECT s FROM Sklep s WHERE s.cena = :cena")})
public class Sklep implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "tytul")
    private String tytul;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "kategoria")
    private String kategoria;
    @Basic(optional = false)
    @NotNull
    @Column(name = "rok")
    private int rok;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "opis")
    private String opis;
    @Size(max = 100)
    @Column(name = "cena")
    private String cena;

    public Sklep() {
    }

    public Sklep(Integer id) {
        this.id = id;
    }

    public Sklep(Integer id, String tytul, String kategoria, int rok, String opis) {
        this.id = id;
        this.tytul = tytul;
        this.kategoria = kategoria;
        this.rok = rok;
        this.opis = opis;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getKategoria() {
        return kategoria;
    }

    public void setKategoria(String kategoria) {
        this.kategoria = kategoria;
    }

    public int getRok() {
        return rok;
    }

    public void setRok(int rok) {
        this.rok = rok;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getCena() {
        return cena;
    }

    public void setCena(String cena) {
        this.cena = cena;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sklep)) {
            return false;
        }
        Sklep other = (Sklep) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "web.Sklep[ id=" + id + " ]";
    }
    
}
