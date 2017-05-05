package de.diedavids.cuba.kukazue.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import java.util.Date;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.FileDescriptor;
import java.util.List;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@NamePattern("%s|name")
@Table(name = "KUKAZUE_TIER")
@Entity(name = "kukazue$Tier")
public class Tier extends StandardEntity {
    private static final long serialVersionUID = -468130004752700506L;

    @Column(name = "ZUECHTERNUMMER", nullable = false)
    protected String zuechternummer;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "GESCHLECHT")
    protected String geschlecht;

    @Temporal(TemporalType.DATE)
    @Column(name = "GEBURTSTDATUM", nullable = false)
    protected Date geburtstdatum;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "VATER_ID")
    protected Tier vater;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open", "clear"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MUTTER_ID")
    protected Tier mutter;

    @JoinTable(name = "KUKAZUE_TIER_FILE_DESCRIPTOR_LINK",
        joinColumns = @JoinColumn(name = "TIER_ID"),
        inverseJoinColumns = @JoinColumn(name = "FILE_DESCRIPTOR_ID"))
    @ManyToMany
    protected List<FileDescriptor> dokumente;

    public void setDokumente(List<FileDescriptor> dokumente) {
        this.dokumente = dokumente;
    }

    public List<FileDescriptor> getDokumente() {
        return dokumente;
    }


    public void setGeburtstdatum(Date geburtstdatum) {
        this.geburtstdatum = geburtstdatum;
    }

    public Date getGeburtstdatum() {
        return geburtstdatum;
    }

    public void setVater(Tier vater) {
        this.vater = vater;
    }

    public Tier getVater() {
        return vater;
    }

    public void setMutter(Tier mutter) {
        this.mutter = mutter;
    }

    public Tier getMutter() {
        return mutter;
    }


    public void setGeschlecht(Geschlecht geschlecht) {
        this.geschlecht = geschlecht == null ? null : geschlecht.getId();
    }

    public Geschlecht getGeschlecht() {
        return geschlecht == null ? null : Geschlecht.fromId(geschlecht);
    }


    public void setZuechternummer(String zuechternummer) {
        this.zuechternummer = zuechternummer;
    }

    public String getZuechternummer() {
        return zuechternummer;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}