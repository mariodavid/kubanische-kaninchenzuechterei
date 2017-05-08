package de.diedavids.cuba.kukazue.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s|titel")
@Table(name = "KUKAZUE_SHOW")
@Entity(name = "kukazue$Show")
public class Show extends StandardEntity {
    private static final long serialVersionUID = 8343506534875317028L;

    @Column(name = "TITEL")
    protected String titel;

    @Temporal(TemporalType.DATE)
    @Column(name = "SHOW_DATUM", nullable = false)
    protected Date showDatum;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "show")
    protected List<ShowErgebnis> ergebnisse;

    public void setErgebnisse(List<ShowErgebnis> ergebnisse) {
        this.ergebnisse = ergebnisse;
    }

    public List<ShowErgebnis> getErgebnisse() {
        return ergebnisse;
    }


    public void setTitel(String titel) {
        this.titel = titel;
    }

    public String getTitel() {
        return titel;
    }

    public void setShowDatum(Date showDatum) {
        this.showDatum = showDatum;
    }

    public Date getShowDatum() {
        return showDatum;
    }


}