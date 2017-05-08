package de.diedavids.cuba.kukazue.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s|platzierung,tier")
@Table(name = "KUKAZUE_SHOW_ERGEBNIS")
@Entity(name = "kukazue$ShowErgebnis")
public class ShowErgebnis extends StandardEntity {
    private static final long serialVersionUID = 1943781539663899805L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "TIER_ID")
    protected Tier tier;

    @Column(name = "PLATZIERUNG")
    protected Integer platzierung;

    @Column(name = "TITEL")
    protected String titel;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SHOW_ID")
    protected Show show;

    public void setShow(Show show) {
        this.show = show;
    }

    public Show getShow() {
        return show;
    }


    public void setTier(Tier tier) {
        this.tier = tier;
    }

    public Tier getTier() {
        return tier;
    }

    public void setPlatzierung(Integer platzierung) {
        this.platzierung = platzierung;
    }

    public Integer getPlatzierung() {
        return platzierung;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }

    public String getTitel() {
        return titel;
    }


}